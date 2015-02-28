# Ransackの日付型の検索時に23:59:59までを検索範囲とする
Ransack.configure do |config|
  config.add_predicate 'lteq_end_of_day',
                       :arel_predicate => 'lteq',
                       :formatter => proc { |v| v.end_of_day },
                       :compounds => false
end