/*assume you are working at a newspaper your task is to prepare a page with titles that writers send you. your cat walking over your keyboard and accidentally added characters. Now you need to filter out the titles and prepare them for publishing 
assume that titles are in an array of strings. You need to do the following procedures on it:
create a single string by concatenating the strings in the array
delete all numeric symbols from the string
capitalize the first character of each word in the string
input : [ "break3ing news5:", "1A 1circle is round!"]
output: "Breaking News: A Circle is Round!"

input:["", "Fresh fried fish - fish fresh fried"]
output: "Fresh Fried Fish - Fish  Fresh Fried"

input: ["2Here2", "is", "   our STRING"]
output: "Here Is Our STRING"

input: ["123   ", "eat;sleep;repeat", "321"]
output: "Eat;Sleep;Repeat"
*/
public class Name {
    public static String prepareTitles(String[] titles) {
        // Step 1: Concatenate the strings
        StringBuilder concatenatedString = new StringBuilder();
        for (int i = 0; i < titles.length; i++) {
            concatenatedString.append(titles[i]);
        }

        // Step 2: Remove numeric symbols
        String stringWithoutNumbers = concatenatedString.toString().replaceAll("[0-9]", "");

        // Step 3: Capitalize the first character of each word
        String[] words = stringWithoutNumbers.split("\\s+");
        StringBuilder result = new StringBuilder();
        for (String word : words) {
            if (!word.isEmpty()) {
                result.append(Character.toUpperCase(word.charAt(0)))
                        .append(word.substring(1).toLowerCase()).append(" ");
            }
        }

        return result.toString().trim();
    }

    public static void main(String[] args) {
        // Test cases
        String[] titles1 = {"break3ing news5: ", "1A 1circle is round!"};
        String[] titles2 = {"", "Fresh fried fish - fish fresh fried"};
        String[] titles3 = {"2Here2 ", "is", "   our STRING"};
        String[] titles4 = {"123   ", "eat;sleep;repeat", "321"};

        System.out.println(prepareTitles(titles1));
        System.out.println(prepareTitles(titles2));
        System.out.println(prepareTitles(titles3));
        System.out.println(prepareTitles(titles4));
    }
}

