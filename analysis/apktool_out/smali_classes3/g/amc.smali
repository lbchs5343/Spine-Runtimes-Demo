.class public final enum Lg/amc;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum CANCEL:Lg/amc;

.field public static final enum COMPRESSION_ERROR:Lg/amc;

.field public static final enum CONNECT_ERROR:Lg/amc;

.field public static final Companion:Lg/yy;

.field public static final enum ENHANCE_YOUR_CALM:Lg/amc;

.field public static final enum FLOW_CONTROL_ERROR:Lg/amc;

.field public static final enum FRAME_SIZE_ERROR:Lg/amc;

.field public static final enum HTTP_1_1_REQUIRED:Lg/amc;

.field public static final enum INADEQUATE_SECURITY:Lg/amc;

.field public static final enum INTERNAL_ERROR:Lg/amc;

.field public static final enum NO_ERROR:Lg/amc;

.field public static final enum PROTOCOL_ERROR:Lg/amc;

.field public static final enum REFUSED_STREAM:Lg/amc;

.field public static final enum SETTINGS_TIMEOUT:Lg/amc;

.field public static final enum STREAM_CLOSED:Lg/amc;

.field public static final synthetic a:[Lg/amc;


# instance fields
.field private final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v0, Lg/amc;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/amc;->NO_ERROR:Lg/amc;

    new-instance v1, Lg/amc;

    const-string v3, "PROTOCOL_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/amc;->PROTOCOL_ERROR:Lg/amc;

    new-instance v3, Lg/amc;

    const-string v5, "INTERNAL_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/amc;->INTERNAL_ERROR:Lg/amc;

    new-instance v5, Lg/amc;

    const-string v7, "FLOW_CONTROL_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg/amc;->FLOW_CONTROL_ERROR:Lg/amc;

    new-instance v7, Lg/amc;

    const-string v9, "SETTINGS_TIMEOUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg/amc;->SETTINGS_TIMEOUT:Lg/amc;

    new-instance v9, Lg/amc;

    const-string v11, "STREAM_CLOSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lg/amc;->STREAM_CLOSED:Lg/amc;

    new-instance v11, Lg/amc;

    const-string v13, "FRAME_SIZE_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lg/amc;->FRAME_SIZE_ERROR:Lg/amc;

    new-instance v13, Lg/amc;

    const-string v15, "REFUSED_STREAM"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2, v2}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lg/amc;->REFUSED_STREAM:Lg/amc;

    new-instance v15, Lg/amc;

    const/16 v17, 0x7

    const-string v2, "CANCEL"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4, v4}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lg/amc;->CANCEL:Lg/amc;

    new-instance v2, Lg/amc;

    const/16 v19, 0x8

    const-string v4, "COMPRESSION_ERROR"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6, v6}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lg/amc;->COMPRESSION_ERROR:Lg/amc;

    new-instance v4, Lg/amc;

    const/16 v21, 0x9

    const-string v6, "CONNECT_ERROR"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8, v8}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lg/amc;->CONNECT_ERROR:Lg/amc;

    new-instance v6, Lg/amc;

    const/16 v23, 0xa

    const-string v8, "ENHANCE_YOUR_CALM"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10, v10}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lg/amc;->ENHANCE_YOUR_CALM:Lg/amc;

    new-instance v8, Lg/amc;

    const/16 v25, 0xb

    const-string v10, "INADEQUATE_SECURITY"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12, v12}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lg/amc;->INADEQUATE_SECURITY:Lg/amc;

    new-instance v10, Lg/amc;

    const/16 v27, 0xc

    const-string v12, "HTTP_1_1_REQUIRED"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14, v14}, Lg/amc;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lg/amc;->HTTP_1_1_REQUIRED:Lg/amc;

    const/16 v12, 0xe

    new-array v12, v12, [Lg/amc;

    aput-object v0, v12, v16

    aput-object v1, v12, v18

    aput-object v3, v12, v20

    aput-object v5, v12, v22

    aput-object v7, v12, v24

    aput-object v9, v12, v26

    aput-object v11, v12, v28

    aput-object v13, v12, v17

    aput-object v15, v12, v19

    aput-object v2, v12, v21

    aput-object v4, v12, v23

    aput-object v6, v12, v25

    aput-object v8, v12, v27

    aput-object v10, v12, v14

    sput-object v12, Lg/amc;->a:[Lg/amc;

    new-instance v0, Lg/yy;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/amc;->Companion:Lg/yy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/amc;->httpCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/amc;
    .locals 1

    const-class v0, Lg/amc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/amc;

    return-object p0
.end method

.method public static values()[Lg/amc;
    .locals 1

    sget-object v0, Lg/amc;->a:[Lg/amc;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/amc;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lg/amc;->httpCode:I

    return v0
.end method
