.class public final enum Lg/gdk;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final Companion:Lg/bap;

.field public static final enum SSL_3_0:Lg/gdk;

.field public static final enum TLS_1_0:Lg/gdk;

.field public static final enum TLS_1_1:Lg/gdk;

.field public static final enum TLS_1_2:Lg/gdk;

.field public static final enum TLS_1_3:Lg/gdk;

.field public static final synthetic a:[Lg/gdk;


# instance fields
.field private final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lg/gdk;

    const-string v1, "TLSv1.3"

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lg/gdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lg/gdk;->TLS_1_3:Lg/gdk;

    new-instance v1, Lg/gdk;

    const-string v2, "TLSv1.2"

    const-string v4, "TLS_1_2"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lg/gdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/gdk;->TLS_1_2:Lg/gdk;

    new-instance v2, Lg/gdk;

    const-string v4, "TLSv1.1"

    const-string v6, "TLS_1_1"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lg/gdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lg/gdk;->TLS_1_1:Lg/gdk;

    new-instance v4, Lg/gdk;

    const-string v6, "TLSv1"

    const-string v8, "TLS_1_0"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lg/gdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lg/gdk;->TLS_1_0:Lg/gdk;

    new-instance v6, Lg/gdk;

    const-string v8, "SSLv3"

    const-string v10, "SSL_3_0"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lg/gdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lg/gdk;->SSL_3_0:Lg/gdk;

    const/4 v8, 0x5

    new-array v8, v8, [Lg/gdk;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lg/gdk;->a:[Lg/gdk;

    new-instance v0, Lg/bap;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/gdk;->Companion:Lg/bap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/gdk;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gdk;
    .locals 1

    const-class v0, Lg/gdk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gdk;

    return-object p0
.end method

.method public static values()[Lg/gdk;
    .locals 1

    sget-object v0, Lg/gdk;->a:[Lg/gdk;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gdk;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gdk;->javaName:Ljava/lang/String;

    return-object v0
.end method
