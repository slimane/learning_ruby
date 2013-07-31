=begin
  table構想
  CREATE TABLE USER(
    handle_name     VARCHAR(255),
    first_name      VARCHAR(255),
    last_name       VARCHAR(255),
    height          FLOAT,
    age             INTEGER,
    gender          BINARY,
    profile         TXT,

    PRIMARY KEY(handle_name)
  )
=end
class User
  #
  # 各ユーザー情報をobjectに格納する
  # handle_nameだけは必須項目のため、この項目に値がなければ例外をraiseする
  # weightが無いのは当サービスが体重管理を目的としたものであるため、変更が頻繁であると予想されること、また各変更を時系列に管理したいためであり、weightは別object(WeightInfo)で管理する
  #
  def initialize(handle_name, first_name, last_name, height, age, gender, profile)
    if handle_name.empty?
      raise ArgumentError, "handle_name must be not empty"
    end

    @handle_name = handle_name
    @user_id     = user_id
    @first_name  = first_name
    @last_name   = last_name
    @height      = height
    @age         = age
    @gender      = gender
    @profile     = profile
  end


  def handle_name
    @handle_name
  end

  def user_id
    @user_id
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def height
    @height
  end

  def age
    @age
  end

  def gender
    @gender
  end

  def profile
    @profile
  end
end

=begin
table 構想
  ダイエット管理サービス
  CREATE TABLE weight_info(
    handle_name       VARCHAR(255),
    insert_date       TIMESTAMP,
    last_update_date  TIMESTAMP,
    weight            FLOAT,
    fat               FLOAT,
    muscle            FLOAT,

    PRIMARY KEY (handle_name, insert_date),
  )
=end

class WeightInfo
  def initialize(handle_name, insert_date, last_update_date, weight, fat, muscle)
    @handle_name      = handle_name
    @insert_date      = insert_date
    @last_update_date = last_update_date
    @weight           = weight
    @fat              = fat
    @muscle           = muscle
  end
end
