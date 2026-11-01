.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/q;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/bytedance/adsdk/ugeno/yoga/q;

.field public static final enum dq:Lcom/bytedance/adsdk/ugeno/yoga/q;

.field private static final synthetic iw:[Lcom/bytedance/adsdk/ugeno/yoga/q;

.field public static final enum ox:Lcom/bytedance/adsdk/ugeno/yoga/q;


# instance fields
.field private final p:I

.field private final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/q;

    const-string v1, "nowrap"

    const-string v2, "NO_WRAP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/bytedance/adsdk/ugeno/yoga/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/q;->dq:Lcom/bytedance/adsdk/ugeno/yoga/q;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/q;

    const-string v2, "wrap"

    const-string v4, "WRAP"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lcom/bytedance/adsdk/ugeno/yoga/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/yoga/q;->d:Lcom/bytedance/adsdk/ugeno/yoga/q;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/yoga/q;

    const-string v4, "wrap_reverse"

    const-string v6, "WRAP_REVERSE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v7, v4}, Lcom/bytedance/adsdk/ugeno/yoga/q;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/bytedance/adsdk/ugeno/yoga/q;->ox:Lcom/bytedance/adsdk/ugeno/yoga/q;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/bytedance/adsdk/ugeno/yoga/q;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/bytedance/adsdk/ugeno/yoga/q;->iw:[Lcom/bytedance/adsdk/ugeno/yoga/q;

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

    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/q;->p:I

    iput-object p4, p0, Lcom/bytedance/adsdk/ugeno/yoga/q;->s:Ljava/lang/String;

    return-void
.end method

.method public static dq(I)Lcom/bytedance/adsdk/ugeno/yoga/q;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/q;->ox:Lcom/bytedance/adsdk/ugeno/yoga/q;

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
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/q;->d:Lcom/bytedance/adsdk/ugeno/yoga/q;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/q;->dq:Lcom/bytedance/adsdk/ugeno/yoga/q;

    return-object p0
.end method

.method public static dq(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/q;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "wrap_reverse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "wrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "nowrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
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
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/q;->ox:Lcom/bytedance/adsdk/ugeno/yoga/q;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/q;->d:Lcom/bytedance/adsdk/ugeno/yoga/q;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/q;->dq:Lcom/bytedance/adsdk/ugeno/yoga/q;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3df6ea75 -> :sswitch_2
        0x37d04a -> :sswitch_1
        0x1d4ddfed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/q;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/q;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/q;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/q;->iw:[Lcom/bytedance/adsdk/ugeno/yoga/q;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/q;

    return-object v0
.end method


# virtual methods
.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/q;->p:I

    return v0
.end method
