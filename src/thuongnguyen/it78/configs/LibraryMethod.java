package thuongnguyen.it78.configs;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

public class LibraryMethod {

    public static String capitalize(String str) {
        if(str == null) return str;
        return str.substring(0, 1).toUpperCase() + str.substring(1).toLowerCase();
    }

    public static String capFirstLetter(String str) {
        String result = "";
        String arrLetter[] = str.split(" ");
        for(String letter : arrLetter) {
            result = result.concat(capitalize(letter)).concat(" ");
        }

        return result.trim();
    }

    public static String priceWithDecimal (Double price) {

        DecimalFormatSymbols symbols = new DecimalFormatSymbols();
        symbols.setDecimalSeparator(',');
        symbols.setGroupingSeparator('.');

        DecimalFormat formatter = new DecimalFormat("###,###,###.##", symbols);
        return formatter.format(price);
    }

    public static String priceWithoutDecimal (Double price) {

        DecimalFormatSymbols symbols = new DecimalFormatSymbols();
        symbols.setDecimalSeparator(',');
        symbols.setGroupingSeparator('.');

        DecimalFormat formatter = new DecimalFormat("###,###,###.##", symbols);
        return formatter.format(price);
    }

    public static String priceToString(Double price) {
        String toShow = priceWithoutDecimal(price);
        if (toShow.indexOf(".") > 0) {
            return priceWithDecimal(price) + " VND";
        } else {
            return priceWithoutDecimal(price) +" VND";
        }
    }

    public static void main(String[] args) {
        System.out.println(capFirstLetter("lê HOANG anh") );
        System.out.println(priceToString(10000000.0));

    }
}
