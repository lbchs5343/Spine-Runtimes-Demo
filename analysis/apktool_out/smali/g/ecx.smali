.class public final enum Lg/ecx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum INSTANCE_GET:Lg/ecx;

.field public static final enum INSTANCE_PUT:Lg/ecx;

.field public static final enum INVOKE_CONSTRUCTOR:Lg/ecx;

.field public static final enum INVOKE_DIRECT:Lg/ecx;

.field public static final enum INVOKE_INSTANCE:Lg/ecx;

.field public static final enum INVOKE_INTERFACE:Lg/ecx;

.field public static final enum INVOKE_STATIC:Lg/ecx;

.field public static final enum STATIC_GET:Lg/ecx;

.field public static final enum STATIC_PUT:Lg/ecx;

.field public static final synthetic a:[Lg/ecx;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lg/ecx;

    const-string v1, "STATIC_PUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/ecx;->STATIC_PUT:Lg/ecx;

    new-instance v1, Lg/ecx;

    const-string v3, "STATIC_GET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/ecx;->STATIC_GET:Lg/ecx;

    new-instance v3, Lg/ecx;

    const-string v5, "INSTANCE_PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/ecx;->INSTANCE_PUT:Lg/ecx;

    new-instance v5, Lg/ecx;

    const-string v7, "INSTANCE_GET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/ecx;->INSTANCE_GET:Lg/ecx;

    new-instance v7, Lg/ecx;

    const-string v9, "INVOKE_STATIC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/ecx;->INVOKE_STATIC:Lg/ecx;

    new-instance v9, Lg/ecx;

    const-string v11, "INVOKE_INSTANCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/ecx;->INVOKE_INSTANCE:Lg/ecx;

    new-instance v11, Lg/ecx;

    const-string v13, "INVOKE_DIRECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/ecx;->INVOKE_DIRECT:Lg/ecx;

    new-instance v13, Lg/ecx;

    const-string v15, "INVOKE_CONSTRUCTOR"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/ecx;->INVOKE_CONSTRUCTOR:Lg/ecx;

    new-instance v15, Lg/ecx;

    const/16 v17, 0x7

    const-string v2, "INVOKE_INTERFACE"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/ecx;->INVOKE_INTERFACE:Lg/ecx;

    const/16 v2, 0x9

    new-array v2, v2, [Lg/ecx;

    aput-object v0, v2, v16

    aput-object v1, v2, v18

    aput-object v3, v2, v6

    aput-object v5, v2, v8

    aput-object v7, v2, v10

    aput-object v9, v2, v12

    aput-object v11, v2, v14

    aput-object v13, v2, v17

    aput-object v15, v2, v4

    sput-object v2, Lg/ecx;->a:[Lg/ecx;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ecx;
    .locals 1

    const-class v0, Lg/ecx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ecx;

    return-object p0
.end method

.method public static values()[Lg/ecx;
    .locals 1

    sget-object v0, Lg/ecx;->a:[Lg/ecx;

    invoke-virtual {v0}, [Lg/ecx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ecx;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    sget-object v0, Lg/cti;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
