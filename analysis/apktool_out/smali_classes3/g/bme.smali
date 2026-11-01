.class public final enum Lg/bme;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum APP_OPEN_AD:Lg/bme;

.field public static final enum BANNER:Lg/bme;

.field public static final enum INTERSTITIAL:Lg/bme;

.field public static final enum NATIVE:Lg/bme;

.field public static final enum REWARDED:Lg/bme;

.field public static final enum REWARDED_INTERSTITIAL:Lg/bme;

.field public static final synthetic a:[Lg/bme;


# instance fields
.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lg/bme;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/bme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/bme;->BANNER:Lg/bme;

    new-instance v1, Lg/bme;

    const-string v3, "INTERSTITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/bme;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/bme;->INTERSTITIAL:Lg/bme;

    new-instance v3, Lg/bme;

    const-string v5, "REWARDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/bme;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/bme;->REWARDED:Lg/bme;

    new-instance v5, Lg/bme;

    const-string v7, "REWARDED_INTERSTITIAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lg/bme;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg/bme;->REWARDED_INTERSTITIAL:Lg/bme;

    new-instance v7, Lg/bme;

    const-string v9, "NATIVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lg/bme;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg/bme;->NATIVE:Lg/bme;

    new-instance v9, Lg/bme;

    const-string v11, "APP_OPEN_AD"

    const/4 v12, 0x5

    const/4 v13, 0x6

    invoke-direct {v9, v11, v12, v13}, Lg/bme;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lg/bme;->APP_OPEN_AD:Lg/bme;

    new-array v11, v13, [Lg/bme;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lg/bme;->a:[Lg/bme;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/bme;->zzb:I

    return-void
.end method

.method public static b(I)Lg/bme;
    .locals 5

    invoke-static {}, Lg/bme;->values()[Lg/bme;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lg/bme;->zzb:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bme;
    .locals 1

    const-class v0, Lg/bme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bme;

    return-object p0
.end method

.method public static values()[Lg/bme;
    .locals 1

    sget-object v0, Lg/bme;->a:[Lg/bme;

    invoke-virtual {v0}, [Lg/bme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bme;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lg/bme;->zzb:I

    return v0
.end method
