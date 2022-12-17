# SavingsAccount
module SavingsAccount
  def self.interest_rate(balance)
    vlr = if balance.instance_of?(String)
            balance.gsub(/_/, '')
          else
            balance
          end

    if vlr.negative?
      3.213
    elsif !vlr.negative? && (vlr.to_f < 1000.00)
      0.5
    elsif vlr >= 1000.00 && vlr < 5000.00
      1.621
    elsif vlr >= 5000.00
      2.475
    end
  end

  def self.annual_balance_update(balance)
    vlr = if balance.instance_of?(String)
      balance.gsub(/_/, '')
    else
      balance
    end

    ((interest_rate(vlr) / 100) + 1) * vlr
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    cur_vlr = if current_balance.instance_of?(String)
                current_balance.gsub(/_/, '')
              else
                current_balance
              end

    des_vlr = if desired_balance.instance_of?(String)
                desired_balance.gsub(/_/, '')
              else
                desired_balance
              end

    ct = 0
    while cur_vlr < des_vlr
      ct += 1
      cur_vlr = annual_balance_update(cur_vlr)
    end
    ct
  end
end
