import sys
# ------------------------------

def main_menu():
    while True:
        print("\n==== Bibliotekssystem ====")
        print("1. Bokhantering")
        print("2. Medlemshantering")
        print("3. Lånehantering")
        print("4. Statistik & rapporter")
        print("0. Avsluta")

        choice = input("Välj ett alternativ: ")

        if choice == "1":
            book_menu()
        elif choice == "2":
            member_menu()
        elif choice == "3":
            loan_menu()
        elif choice == "4":
            stats_menu()
        elif choice == "0":
            print("Avslutar programmet...")
            sys.exit()
        else:
            print("Ogiltigt val, försök igen.")


# ------------------------------
# 📚 BOKMENY
# ------------------------------

def book_menu():
    while True:
        print("\n--- Bokhantering ---")
        print("1. Visa alla böcker")
        print("2. Sök efter bok")
        print("3. Lägg till ny bok")
        print("4. Visa tillgängliga böcker")
        print("0. Tillbaka")

        choice = input("Välj ett alternativ: ")

        if choice == "1":
            list_books()
        elif choice == "2":
            search_book()
        elif choice == "3":
            add_book()
        elif choice == "4":
            list_available_books()
        elif choice == "0":
            return
        else:
            print("Ogiltigt val.")

def list_books():
    print("👉 (funktion kommer här) Visa alla böcker")
    # Här lägger du SQLAlchemy-logik senare


def search_book():
    print("👉 (funktion kommer här) Sök efter bok")


def add_book():
    print("👉 (funktion kommer här) Lägg till ny bok")


def list_available_books():
    print("👉 (funktion kommer här) Visa tillgängliga böcker")


# ------------------------------
# 🧍 MEDLEMSMENY
# ------------------------------

def member_menu():
    while True:
        print("\n--- Medlemshantering ---")
        print("1. Visa alla medlemmar")
        print("2. Lägg till ny medlem")
        print("3. Sök medlem")
        print("0. Tillbaka")

        choice = input("Välj: ")

        if choice == "1":
            print("(funktion här) Visa alla medlemmar")
        elif choice == "2":
            print("(funktion här) Lägg till medlem")
        elif choice == "3":
            print("(funktion här) Sök medlem")
        elif choice == "0":
            return


# ------------------------------
# 📘 LÅNEMENY
# ------------------------------

def loan_menu():
    while True:
        print("\n--- Lånehantering ---")
        print("1. Registrera nytt lån")
        print("2. Registrera återlämning")
        print("3. Visa aktiva lån")
        print("4. Visa försenade lån")
        print("0. Tillbaka")

        choice = input("Välj: ")

        if choice == "1":
            print("(funktion här) Nytt lån")
        elif choice == "2":
            print("(funktion här) Återlämning")
        elif choice == "3":
            print("(funktion här) Aktiva lån")
        elif choice == "4":
            print("(funktion här) Försenade lån")
        elif choice == "0":
            return


# ------------------------------
# 📊 STATISTIKMENY
# ------------------------------

def stats_menu():
    while True:
        print("\n--- Statistik & rapporter ---")
        print("1. Mest lästa böcker")
        print("2. Medlem med flest lån")
        print("3. Översikt av biblioteket")
        print("0. Tillbaka")

        choice = input("Välj: ")

        if choice == "1":
            print("(funktion här) Mest lästa böcker")
        elif choice == "2":
            print("(funktion här) Medlem med flest lån")
        elif choice == "3":
            print("(funktion här) Översikt")
        elif choice == "0":
            return


# ------------------------------
# 🚀 STARTA PROGRAMMET
# ------------------------------

if __name__ == "__main__":
    main_menu()
