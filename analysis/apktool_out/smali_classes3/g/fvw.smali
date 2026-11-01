.class public abstract enum Lg/fvw;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum IDENTITY:Lg/fvw;

.field public static final enum LOWER_CASE_WITH_DASHES:Lg/fvw;

.field public static final enum LOWER_CASE_WITH_DOTS:Lg/fvw;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lg/fvw;

.field public static final enum UPPER_CAMEL_CASE:Lg/fvw;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Lg/fvw;

.field public static final enum UPPER_CASE_WITH_UNDERSCORES:Lg/fvw;

.field public static final synthetic b:[Lg/fvw;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/ax;

    invoke-direct {v0}, Lg/ax;-><init>()V

    sput-object v0, Lg/fvw;->IDENTITY:Lg/fvw;

    new-instance v1, Lg/bmw;

    invoke-direct {v1}, Lg/bmw;-><init>()V

    sput-object v1, Lg/fvw;->UPPER_CAMEL_CASE:Lg/fvw;

    new-instance v2, Lg/gd;

    invoke-direct {v2}, Lg/gd;-><init>()V

    sput-object v2, Lg/fvw;->UPPER_CAMEL_CASE_WITH_SPACES:Lg/fvw;

    new-instance v3, Lg/cio;

    invoke-direct {v3}, Lg/cio;-><init>()V

    sput-object v3, Lg/fvw;->UPPER_CASE_WITH_UNDERSCORES:Lg/fvw;

    new-instance v4, Lg/hem;

    invoke-direct {v4}, Lg/hem;-><init>()V

    sput-object v4, Lg/fvw;->LOWER_CASE_WITH_UNDERSCORES:Lg/fvw;

    new-instance v5, Lg/cew;

    invoke-direct {v5}, Lg/cew;-><init>()V

    sput-object v5, Lg/fvw;->LOWER_CASE_WITH_DASHES:Lg/fvw;

    new-instance v6, Lg/fkm;

    invoke-direct {v6}, Lg/fkm;-><init>()V

    sput-object v6, Lg/fvw;->LOWER_CASE_WITH_DOTS:Lg/fvw;

    const/4 v7, 0x7

    new-array v7, v7, [Lg/fvw;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    sput-object v7, Lg/fvw;->b:[Lg/fvw;

    return-void
.end method

.method public static c(CLjava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/fvw;
    .locals 1

    const-class v0, Lg/fvw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/fvw;

    return-object p0
.end method

.method public static values()[Lg/fvw;
    .locals 1

    sget-object v0, Lg/fvw;->b:[Lg/fvw;

    invoke-virtual {v0}, [Lg/fvw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fvw;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/reflect/Field;)Ljava/lang/String;
.end method
