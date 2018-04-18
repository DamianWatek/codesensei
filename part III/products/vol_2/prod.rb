require 'csv'

class ProductList
  
  def initialize(file_path)
    @result = CSV.read(file_path)
    @result.shift
  end
  # Szukanie produktów
  def find(product)
    @result.find do |products_arr|
      products_arr[0] == product
    end
  end
  # Metoda wykonująca metody szukania produktów tańszych i droższych
  def collect(type, price)
    if type == :cheaper
      collect_cheaper(price)
    elsif type == :more_expensive
      collect_more_expensive(price)
    end
  end
  # Metoda zamiany ceny na nowa walute i zapisywanie w pliku 
  def exchange(exchange, currency, file)
    # Robimy each po naszym pliku products.csv
    @result.each do |row| 
      # Jeśli tablica zaczyna się od Product dopisuje do naszego pliku file wiersz ze zmieniona walutą
      if row[0] == "Product"
        row[1] = "Price(#{currency})"
        CSV.open(file, "a+") do |file|
            file << row
        end
      # W przeciwnym wypadku tworzymy nową cene dla nowej waluty
      else
        new_price = row[1].to_f / exchange
        row[1] = new_price.round(2)
        CSV.open(file, "a+") do |file|
          file << row
        end
      end 
    end
  end

  private
  # Prywatne metody, szukające tańszych i droższych produktów
  def collect_cheaper(price)
    @result.select do |row|
      row[1].to_f < price
    end
  end

  def collect_more_expensive(price)
    @result.select do |row|
      row[1].to_f > price
    end
  end

end
