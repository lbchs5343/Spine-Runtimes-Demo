.class public final enum Lg/aqt;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final Companion:Lg/ie;

.field public static final enum H2_PRIOR_KNOWLEDGE:Lg/aqt;

.field public static final enum HTTP_1_0:Lg/aqt;

.field public static final enum HTTP_1_1:Lg/aqt;

.field public static final enum HTTP_2:Lg/aqt;

.field public static final enum QUIC:Lg/aqt;

.field public static final enum SPDY_3:Lg/aqt;

.field public static final synthetic a:[Lg/aqt;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lg/aqt;

    const-string v1, "http/1.0"

    const-string v2, "HTTP_1_0"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lg/aqt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lg/aqt;->HTTP_1_0:Lg/aqt;

    new-instance v1, Lg/aqt;

    const-string v2, "http/1.1"

    const-string v4, "HTTP_1_1"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lg/aqt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/aqt;->HTTP_1_1:Lg/aqt;

    new-instance v2, Lg/aqt;

    const-string v4, "spdy/3.1"

    const-string v6, "SPDY_3"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lg/aqt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lg/aqt;->SPDY_3:Lg/aqt;

    new-instance v4, Lg/aqt;

    const-string v6, "h2"

    const-string v8, "HTTP_2"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lg/aqt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lg/aqt;->HTTP_2:Lg/aqt;

    new-instance v6, Lg/aqt;

    const-string v8, "h2_prior_knowledge"

    const-string v10, "H2_PRIOR_KNOWLEDGE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lg/aqt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lg/aqt;->H2_PRIOR_KNOWLEDGE:Lg/aqt;

    new-instance v8, Lg/aqt;

    const-string v10, "quic"

    const-string v12, "QUIC"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lg/aqt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lg/aqt;->QUIC:Lg/aqt;

    const/4 v10, 0x6

    new-array v10, v10, [Lg/aqt;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lg/aqt;->a:[Lg/aqt;

    new-instance v0, Lg/ie;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/aqt;->Companion:Lg/ie;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/aqt;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic b(Lg/aqt;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg/aqt;->protocol:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/aqt;
    .locals 1

    const-class v0, Lg/aqt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/aqt;

    return-object p0
.end method

.method public static values()[Lg/aqt;
    .locals 1

    sget-object v0, Lg/aqt;->a:[Lg/aqt;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/aqt;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/aqt;->protocol:Ljava/lang/String;

    return-object v0
.end method
