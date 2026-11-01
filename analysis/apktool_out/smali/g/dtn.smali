.class public final enum Lg/dtn;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lg/dtn;

.field public static final Companion:Lg/uu;

.field public static final enum ON_ANY:Lg/dtn;

.field public static final enum ON_CREATE:Lg/dtn;

.field public static final enum ON_DESTROY:Lg/dtn;

.field public static final enum ON_PAUSE:Lg/dtn;

.field public static final enum ON_RESUME:Lg/dtn;

.field public static final enum ON_START:Lg/dtn;

.field public static final enum ON_STOP:Lg/dtn;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lg/dtn;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/dtn;->ON_CREATE:Lg/dtn;

    new-instance v1, Lg/dtn;

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/dtn;->ON_START:Lg/dtn;

    new-instance v3, Lg/dtn;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/dtn;->ON_RESUME:Lg/dtn;

    new-instance v5, Lg/dtn;

    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/dtn;->ON_PAUSE:Lg/dtn;

    new-instance v7, Lg/dtn;

    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/dtn;->ON_STOP:Lg/dtn;

    new-instance v9, Lg/dtn;

    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/dtn;->ON_DESTROY:Lg/dtn;

    new-instance v11, Lg/dtn;

    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/dtn;->ON_ANY:Lg/dtn;

    const/4 v13, 0x7

    new-array v13, v13, [Lg/dtn;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lg/dtn;->$VALUES:[Lg/dtn;

    new-instance v0, Lg/uu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dtn;->Companion:Lg/uu;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/dtn;
    .locals 1

    const-class v0, Lg/dtn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/dtn;

    return-object p0
.end method

.method public static values()[Lg/dtn;
    .locals 1

    sget-object v0, Lg/dtn;->$VALUES:[Lg/dtn;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/dtn;

    return-object v0
.end method


# virtual methods
.method public final a()Lg/fqv;
    .locals 3

    sget-object v0, Lg/de;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no target state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lg/fqv;->DESTROYED:Lg/fqv;

    return-object v0

    :pswitch_1
    sget-object v0, Lg/fqv;->RESUMED:Lg/fqv;

    return-object v0

    :pswitch_2
    sget-object v0, Lg/fqv;->STARTED:Lg/fqv;

    return-object v0

    :pswitch_3
    sget-object v0, Lg/fqv;->CREATED:Lg/fqv;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
