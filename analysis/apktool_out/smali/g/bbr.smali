.class public final synthetic Lg/bbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field public final synthetic a:Lg/bhl;


# direct methods
.method public synthetic constructor <init>(Lg/bhl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bbr;->a:Lg/bhl;

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    iget-object p1, p0, Lg/bbr;->a:Lg/bhl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    iget-object p1, p1, Lg/bhl;->$query:Lg/fxn;

    new-instance v0, Lg/q;

    invoke-static {p4}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-direct {v0, p4}, Lg/q;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {p1, v0}, Lg/fxn;->_cp(Lg/eob;)V

    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    check-cast p1, Landroid/database/Cursor;

    return-object p1
.end method
