from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, relationship, MappedAsDataclass
from sqlalchemy import String, ForeignKey
from typing import Optional, List 

# class Base(MappedAsDataclass, DeclarativeBase):
class Base(DeclarativeBase):
    pass

class Super(Base):
    __tablename__ = "supers"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String)
    align: Mapped[str] = mapped_column(String)
    tagline: Mapped[str] = mapped_column(String)
    based_in: Mapped[str] = mapped_column(String)
    powers: Mapped[List["Power"]] = relationship(
        back_populates="hero"
    )

    def __str__(self):
        return self.nombre

class Power(Base):
    __tablename__ = "powers"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String)
    super_id: Mapped[int] = mapped_column(ForeignKey("supers.id"))
    hero: Mapped["Super"] = relationship(back_populates="powers",)
