.class public final enum Lg/bmk;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DEBUG:Lg/bmk;

.field public static final enum ERROR:Lg/bmk;

.field public static final enum INFO:Lg/bmk;

.field public static final enum TRACE:Lg/bmk;

.field public static final enum WARN:Lg/bmk;

.field public static final synthetic a:[Lg/bmk;


# instance fields
.field private final levelInt:I

.field private final levelStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lg/bmk;

    const/16 v1, 0x28

    const-string v2, "ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lg/bmk;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lg/bmk;->ERROR:Lg/bmk;

    new-instance v1, Lg/bmk;

    const/16 v2, 0x1e

    const-string v4, "WARN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v4}, Lg/bmk;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lg/bmk;->WARN:Lg/bmk;

    new-instance v2, Lg/bmk;

    const/16 v4, 0x14

    const-string v6, "INFO"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4, v6}, Lg/bmk;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lg/bmk;->INFO:Lg/bmk;

    new-instance v4, Lg/bmk;

    const/16 v6, 0xa

    const-string v8, "DEBUG"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6, v8}, Lg/bmk;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lg/bmk;->DEBUG:Lg/bmk;

    new-instance v6, Lg/bmk;

    const-string v8, "TRACE"

    const/4 v10, 0x4

    invoke-direct {v6, v8, v10, v3, v8}, Lg/bmk;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lg/bmk;->TRACE:Lg/bmk;

    const/4 v8, 0x5

    new-array v8, v8, [Lg/bmk;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v10

    sput-object v8, Lg/bmk;->a:[Lg/bmk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/bmk;->levelInt:I

    iput-object p4, p0, Lg/bmk;->levelStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bmk;
    .locals 1

    const-class v0, Lg/bmk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bmk;

    return-object p0
.end method

.method public static values()[Lg/bmk;
    .locals 1

    sget-object v0, Lg/bmk;->a:[Lg/bmk;

    invoke-virtual {v0}, [Lg/bmk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bmk;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lg/bmk;->levelInt:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bmk;->levelStr:Ljava/lang/String;

    return-object v0
.end method
