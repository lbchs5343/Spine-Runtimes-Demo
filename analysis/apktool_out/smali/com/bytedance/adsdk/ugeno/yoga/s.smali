.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/s;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/bytedance/adsdk/ugeno/yoga/s;

.field public static final enum dq:Lcom/bytedance/adsdk/ugeno/yoga/s;

.field private static final synthetic mn:[Lcom/bytedance/adsdk/ugeno/yoga/s;

.field public static final enum ox:Lcom/bytedance/adsdk/ugeno/yoga/s;

.field public static final enum p:Lcom/bytedance/adsdk/ugeno/yoga/s;


# instance fields
.field private final iw:Ljava/lang/String;

.field private final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/s;

    const-string v1, "column"

    const-string v2, "COLUMN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/bytedance/adsdk/ugeno/yoga/s;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/s;->dq:Lcom/bytedance/adsdk/ugeno/yoga/s;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/s;

    const-string v2, "column_reverse"

    const-string v4, "COLUMN_REVERSE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lcom/bytedance/adsdk/ugeno/yoga/s;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/yoga/s;->d:Lcom/bytedance/adsdk/ugeno/yoga/s;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/yoga/s;

    const-string v4, "row"

    const-string v6, "ROW"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v7, v4}, Lcom/bytedance/adsdk/ugeno/yoga/s;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/bytedance/adsdk/ugeno/yoga/s;->ox:Lcom/bytedance/adsdk/ugeno/yoga/s;

    new-instance v4, Lcom/bytedance/adsdk/ugeno/yoga/s;

    const-string v6, "row_reverse"

    const-string v8, "ROW_REVERSE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v9, v6}, Lcom/bytedance/adsdk/ugeno/yoga/s;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/bytedance/adsdk/ugeno/yoga/s;->p:Lcom/bytedance/adsdk/ugeno/yoga/s;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/bytedance/adsdk/ugeno/yoga/s;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/bytedance/adsdk/ugeno/yoga/s;->mn:[Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->s:I

    iput-object p4, p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->iw:Ljava/lang/String;

    return-void
.end method

.method public static dq(I)Lcom/bytedance/adsdk/ugeno/yoga/s;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->p:Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->ox:Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->d:Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object p0

    :cond_3
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->dq:Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object p0
.end method

.method public static dq(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/s;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "row"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "row_reverse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "column"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "column_reverse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->ox:Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->p:Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->dq:Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->d:Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6a28e907 -> :sswitch_3
        -0x50c12caa -> :sswitch_2
        -0xc62c683 -> :sswitch_1
        0x1b9da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/s;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/s;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/s;->mn:[Lcom/bytedance/adsdk/ugeno/yoga/s;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/s;

    return-object v0
.end method


# virtual methods
.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/s;->s:I

    return v0
.end method
