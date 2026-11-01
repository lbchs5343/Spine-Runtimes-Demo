.class public Lg/her;
.super Lg/blj;
.source "SourceFile"


# static fields
.field public static final a:Lg/bli;


# instance fields
.field public final b:Lg/gob;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bli;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lg/bli;-><init>(I)V

    sput-object v0, Lg/her;->a:Lg/bli;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/blj;-><init>()V

    new-instance v0, Lg/gob;

    invoke-direct {v0}, Lg/gob;-><init>()V

    iput-object v0, p0, Lg/her;->b:Lg/gob;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/her;->c:Z

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 6

    iget-object v0, p0, Lg/her;->b:Lg/gob;

    invoke-virtual {v0}, Lg/gob;->j()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Lg/gob;->i(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fm;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lg/fm;->y(Z)Lg/adh;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lg/gob;->b:I

    iget-object v3, v0, Lg/gob;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput v2, v0, Lg/gob;->b:I

    iput-boolean v2, v0, Lg/gob;->c:Z

    return-void
.end method
