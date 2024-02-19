import java.io.*;
import java.util.*;

public class Database {
    private final List<Animals> animals;
    private static final String FILE_PATH = "app/database.txt";

    public Database() {
        animals = new ArrayList<>();
        loadDatabase();
    }

    public void addAnimal(Animals animals) {
        animals.add(animals);
        saveDatabase();
    }

    public void displayAnimalCommands(String name) {
        for (Animals animals : animals) {
            if (animals.getName().equals(name)) {
                animals.displayCommands();
                return;
            }
        }
        System.out.println("Животное с именем " + name + " не найдено.");
    }



    public void teachNewCommand(String name, String command) {
        for (Animals animal : animals) {
            if (animal.getName().equals(name)) {
                String[] commands = command.split(",");
                for (int i = 0; i < commands.length; i++) {
                    String trimmedCommand = commands[i].trim();
                    commands[i] = trimmedCommand;
                }
                animal.teachNewCommand(command);
                saveDatabase();
                System.out.println("Команда успешно добавлена для животного.");
                return;
            }
        }
        System.out.println("Животное с именем " + name + " не найдено.");
    }


    private void loadDatabase() {
        try (BufferedReader reader = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] data = line.split(",");
                if (data.length >= 3) {
                    String className = data[0];
                    String name = data[1];
                    String skills = String.join(",", Arrays.copyOfRange(data, 2, data.length));

                    Animals animals;
                    switch (className) {
                        case "Dog" -> animals = new Dogs(name, skills);
                        case "Cat" -> animals = new Cats(name, skills);
                        case "Hamster" -> animals = new Hamsters(name, skills);
                        case "Donkey" -> animals = new Donkeys(name, skills);
                        case "Horse" -> animals = new Horses(name, skills);
                        default -> {
                            System.out.println("Неизвестный класс животного: " + className);
                            continue;
                        }
                    }
                    animals.add(animals);
                } else {
                    System.out.println("Некорректные данные в файле: " + line);
                }
            }
            System.out.println("База данных успешно загружена.");
        } catch (IOException e) {
            System.out.println("Ошибка при чтении базы данных: " + e.getMessage());
        }
    }


    public void displayAllAnimals() {
        try {
            File file = new File(FILE_PATH);
            Scanner fileScanner = new Scanner(file);

            while (fileScanner.hasNextLine()) {
                String animalData = fileScanner.nextLine();
                System.out.println(animalData);
            }

            fileScanner.close();
        } catch (FileNotFoundException e) {
            System.out.println("Файл с данными о животных не найден.");
        }
    }

    private void saveDatabase() {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH))) {
            for (Animals animals : animals) {
                String className = animals.getClass().getSimpleName();
                String name = animals.getName();
                String skills = animals.getSkills().replaceAll(",\\s+", ",");

                String line = className + "," + name + "," + skills;
                writer.write(line);
                writer.newLine();
            }
            System.out.println("База данных успешно сохранена.");
        } catch (IOException e) {
            System.out.println("Ошибка при сохранении базы данных: " + e.getMessage());
        }
    }

}