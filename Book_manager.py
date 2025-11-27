from database import SessionLocal
from models import Book


def list_all_books():
    session = SessionLocal()
    books = session.query(Book).all()

    print("\n=== Alla böcker ===")
    if not books:
        print("Inga böcker i databasen.")
    else:
        for b in books:
            print(f"[{b.id}] {b.title} – {b.author} {b.available_copies} exemplar")

    session.close()


def search_book():
    session = SessionLocal()
    query = input("Ange titel eller författare: ")

    books = session.query(Book).filter(
        (Book.title.ilike(f"%{query}%")) |
        (Book.author.ilike(f"%{query}%"))
    ).all()

    print("\n=== Sökresultat ===")
    if not books:
        print("Inga träffar.")
    else:
        for b in books:
            print(f"[{b.id}] {b.title} – {b.author} ({b.available_copies} exemplar)")

    session.close()


def add_book():
    session = SessionLocal()

    print("\n=== Lägg till ny bok ===")
    title = input("Titel: ")
    author = input("Författare: ")

    try:
        copies = int(input("Antal exemplar: "))
    except ValueError:
        print("Ogiltigt antal.")
        return

    new_book = Book(title=title, author=author, available_copies=copies)
    session.add(new_book)
    session.commit()

    print("✔ Bok tillagd!")
    session.close()


def list_available_books():
    session = SessionLocal()
    books = session.query(Book).filter(Book.available_copies > 0).all()

    print("\n=== Tillgängliga böcker ===")
    if not books:
        print("Inga böcker tillgängliga.")
    else:
        for b in books:
            print(f"[{b.id}] {b.title} – {b.author} {b.available_copies} exemplar")

    session.close()
