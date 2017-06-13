require 'rails_helper'

RSpec.describe Girl, type: :model do
  # 测试用例1
  # 创建一个 单身 不漂亮的 女孩, 来验证 have_chance? 方法
  it "have chance? {single but not beautiful}" do
    params = { single: true, beautiful: false }
    girl = Girl.new(params)
    expect(girl.have_chance?).to eq(true)
  end

  # 测试用例2
  # 创建一个 单身 不漂亮的 女孩, 来验证 suit_my_taste? 方法
  it "suit my taste? {single but not beautiful}" do
    params = { single: true, beautiful: false }
    girl = Girl.new(params)
    expect(girl.suit_my_taste?).to eq(true)
  end

  # 测试用例3
  # 创建了一个 既单身又漂亮的 女孩, 来验证 suit_my_taste? 方法
  it "suit my taste? {single but not beautiful}" do
    params = { single: true, beautiful: true }
    girl = Girl.new(params)
    expect(girl.suit_my_taste?).to eq(true)
  end  
end
