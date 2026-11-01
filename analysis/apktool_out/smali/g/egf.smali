.class public final synthetic Lg/egf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dle;
.implements Lg/fbg;


# instance fields
.field public final synthetic a:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;)V
    .locals 0

    iput-wide p1, p0, Lg/egf;->a:J

    iput-object p3, p0, Lg/egf;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _bt(Lg/ggu;)V
    .locals 4

    iget-object v0, p0, Lg/egf;->c:Ljava/lang/Object;

    check-cast v0, Lg/cqf;

    iget-object v1, p1, Lg/ggu;->i:Lg/fce;

    iget-wide v2, p0, Lg/egf;->a:J

    iput-wide v2, v1, Lg/fce;->p:J

    sget-object v1, Lg/cqf;->CONST_WIDE:Lg/cqf;

    if-ne v0, v1, :cond_0

    sget-object v0, Lg/cqz;->WIDE:Lg/cqz;

    goto :goto_0

    :cond_0
    sget-object v0, Lg/cqz;->NARROW:Lg/cqz;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lg/ggu;->j(ILg/cqz;)V

    return-void
.end method

.method public synthetic _ct(Lg/ggu;)V
    .locals 0

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg/egf;->c:Ljava/lang/Object;

    check-cast v0, Lg/ku;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "next_request_ms"

    iget-wide v3, p0, Lg/egf;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v0, Lg/ku;->a:Ljava/lang/String;

    iget-object v3, v0, Lg/ku;->c:Lg/cq;

    invoke-static {v3}, Lg/eow;->c(Lg/cq;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "transport_contexts"

    const-string v5, "backend_name = ? and priority = ?"

    invoke-virtual {p1, v4, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v2, v5, :cond_0

    const-string v2, "backend_name"

    iget-object v0, v0, Lg/ku;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lg/eow;->c(Lg/cq;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "priority"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v6
.end method
