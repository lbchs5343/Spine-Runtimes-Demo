.class public final enum Lg/ges;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum EQ:Lg/ges;

.field public static final enum GE:Lg/ges;

.field public static final enum GT:Lg/ges;

.field public static final enum LE:Lg/ges;

.field public static final enum LT:Lg/ges;

.field public static final enum NE:Lg/ges;

.field public static final synthetic a:[Lg/ges;


# instance fields
.field private final symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lg/ges;

    const-string v1, "=="

    const-string v2, "EQ"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lg/ges;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lg/ges;->EQ:Lg/ges;

    new-instance v1, Lg/ges;

    const-string v2, "!="

    const-string v4, "NE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lg/ges;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/ges;->NE:Lg/ges;

    new-instance v2, Lg/ges;

    const-string v4, "<"

    const-string v6, "LT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lg/ges;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lg/ges;->LT:Lg/ges;

    new-instance v4, Lg/ges;

    const-string v6, "<="

    const-string v8, "LE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lg/ges;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lg/ges;->LE:Lg/ges;

    new-instance v6, Lg/ges;

    const-string v8, ">"

    const-string v10, "GT"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lg/ges;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lg/ges;->GT:Lg/ges;

    new-instance v8, Lg/ges;

    const-string v10, ">="

    const-string v12, "GE"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lg/ges;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lg/ges;->GE:Lg/ges;

    const/4 v10, 0x6

    new-array v10, v10, [Lg/ges;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lg/ges;->a:[Lg/ges;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/ges;->symbol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ges;
    .locals 1

    const-class v0, Lg/ges;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ges;

    return-object p0
.end method

.method public static values()[Lg/ges;
    .locals 1

    sget-object v0, Lg/ges;->a:[Lg/ges;

    invoke-virtual {v0}, [Lg/ges;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ges;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/ges;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lg/ges;
    .locals 3

    sget-object v0, Lg/heg;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown if operations type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lg/ges;->LT:Lg/ges;

    return-object v0

    :pswitch_1
    sget-object v0, Lg/ges;->LE:Lg/ges;

    return-object v0

    :pswitch_2
    sget-object v0, Lg/ges;->GT:Lg/ges;

    return-object v0

    :pswitch_3
    sget-object v0, Lg/ges;->GE:Lg/ges;

    return-object v0

    :pswitch_4
    sget-object v0, Lg/ges;->EQ:Lg/ges;

    return-object v0

    :pswitch_5
    sget-object v0, Lg/ges;->NE:Lg/ges;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
