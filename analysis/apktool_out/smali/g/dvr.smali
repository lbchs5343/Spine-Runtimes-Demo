.class public final enum Lg/dvr;
.super Ljava/lang/Enum;

# interfaces
.implements Lg/axb;


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final synthetic b:[Lg/dvr;

.field public static final enum d:Lg/dvr;

.field public static final enum dq:Lg/dvr;

.field public static final enum ox:Lg/dvr;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/dvr;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dvr;->dq:Lg/dvr;

    new-instance v1, Lg/dvr;

    const-string v3, "FALSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dvr;->d:Lg/dvr;

    new-instance v3, Lg/dvr;

    const-string v5, "NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dvr;->ox:Lg/dvr;

    const/4 v5, 0x3

    new-array v5, v5, [Lg/dvr;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lg/dvr;->b:[Lg/dvr;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lg/dvr;->a:Ljava/util/HashMap;

    invoke-static {}, Lg/dvr;->values()[Lg/dvr;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lg/dvr;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dvr;
    .locals 1

    const-class v0, Lg/dvr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dvr;

    return-object p0
.end method

.method public static values()[Lg/dvr;
    .locals 1

    sget-object v0, Lg/dvr;->b:[Lg/dvr;

    invoke-virtual {v0}, [Lg/dvr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dvr;

    return-object v0
.end method
