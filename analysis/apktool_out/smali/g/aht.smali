.class public final Lg/aht;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/List;

.field public final c:Lg/cwx;

.field public final d:I

.field public e:[Lg/cwx;


# direct methods
.method public constructor <init>(ILg/cwx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lg/aht;->a:Ljava/util/Map;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/aht;->b:Ljava/util/List;

    iput-object p2, p0, Lg/aht;->c:Lg/cwx;

    iput p1, p0, Lg/aht;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lg/aht;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/aht;

    iget-object v0, p0, Lg/aht;->c:Lg/cwx;

    iget-object p1, p1, Lg/aht;->c:Lg/cwx;

    invoke-virtual {v0, p1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/aht;->c:Lg/cwx;

    iget v0, v0, Lg/cwx;->az:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/aht;->c:Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
