# frozen_string_literal: true

class BaseActions
  def click_id(value)
    @driver.find_element(:id, value.to_s).click
  end

  def click_xpath(value)
    @driver.find_element(:xpath, value.to_s).click
  end

  def send_keys_id(id, field)
    @driver.find_element(:id, id).send_keys(field)
  end

  def element_on_screen?(element)
    @driver.find_element(:xpath, element).displayed?
  end

  def element_on_screen_id?(element)
    @driver.find_element(:id, element).displayed?
  end

  def get_text_by_xpath(element)
    @driver.find_element(:xpath, element).text
  end

  def text_of_id(element)
    @driver.find_element(:id, element).text
  end
end
