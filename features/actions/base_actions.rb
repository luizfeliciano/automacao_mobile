# frozen_string_literal: true

class BaseActions
  def click_id(value)
    $driver.find_element(:id, value.to_s).click
  end

  def click_by_text(value)
    $driver.find_element(:xpath, "//*[contains(@text,\"#{value}\")]").click
  end

  def click_xpath(value)
    $driver.find_element(:xpath, value.to_s).click
  end

  def click_accessibility_id(value)
    $driver.find_element(:accessibility_id, value.to_s).click
  end

  def send_keys_id(id, field)
    @driver.find_element(:id, id).send_keys(field)
  end

  def send_keys_xpath(xpath, field)
    @driver.find_element(:xpath, xpath).send_keys(field)
  end

  def send_keys_accessibility_id(accessibility_id, field)
    @driver.find_element(:accessibility_id, accessibility_id).send_keys(field)
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

  def text_of_xpath(value, index)
    @driver.find_elements(:xpath, value.to_s)[index].text
  end

  def deslizar_devagar_para_cima
    Appium::TouchAction.new.long_press(x: 1250, y: 2430).move_to(x: 1250, y: 1305).release.perform
  end

  def deslizar_devagar_para_baixo
    Appium::TouchAction.new.swipe(start_x: 1250, start_y: 2430, end_x: 1250, end_y: 1305, durattion: 600).perform
  end

  def scroll_by_text(value)
    find_element(:uiautomator, "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().text(\"#{value}\"))")
  end
end
