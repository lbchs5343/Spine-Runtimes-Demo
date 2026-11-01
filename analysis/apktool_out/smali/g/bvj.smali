.class public final enum Lg/bvj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ADD:Lg/bvj;

.field public static final enum AND:Lg/bvj;

.field public static final enum DIV:Lg/bvj;

.field public static final enum MUL:Lg/bvj;

.field public static final enum OR:Lg/bvj;

.field public static final enum REM:Lg/bvj;

.field public static final enum SHL:Lg/bvj;

.field public static final enum SHR:Lg/bvj;

.field public static final enum SUB:Lg/bvj;

.field public static final enum USHR:Lg/bvj;

.field public static final enum XOR:Lg/bvj;

.field public static final synthetic a:[Lg/bvj;


# instance fields
.field private final symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lg/bvj;

    const-string v1, "+"

    const-string v2, "ADD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lg/bvj;->ADD:Lg/bvj;

    new-instance v1, Lg/bvj;

    const-string v2, "-"

    const-string v4, "SUB"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/bvj;->SUB:Lg/bvj;

    new-instance v2, Lg/bvj;

    const-string v4, "*"

    const-string v6, "MUL"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lg/bvj;->MUL:Lg/bvj;

    new-instance v4, Lg/bvj;

    const-string v6, "/"

    const-string v8, "DIV"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lg/bvj;->DIV:Lg/bvj;

    new-instance v6, Lg/bvj;

    const-string v8, "%"

    const-string v10, "REM"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lg/bvj;->REM:Lg/bvj;

    new-instance v8, Lg/bvj;

    const-string v10, "&"

    const-string v12, "AND"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lg/bvj;->AND:Lg/bvj;

    new-instance v10, Lg/bvj;

    const-string v12, "|"

    const-string v14, "OR"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lg/bvj;->OR:Lg/bvj;

    new-instance v12, Lg/bvj;

    const-string v14, "^"

    const/16 v16, 0x0

    const-string v3, "XOR"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v12, v3, v5, v14}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lg/bvj;->XOR:Lg/bvj;

    new-instance v3, Lg/bvj;

    const-string v14, "<<"

    const/16 v18, 0x7

    const-string v5, "SHL"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lg/bvj;->SHL:Lg/bvj;

    new-instance v5, Lg/bvj;

    const-string v14, ">>"

    const/16 v20, 0x8

    const-string v7, "SHR"

    const/16 v21, 0x3

    const/16 v9, 0x9

    invoke-direct {v5, v7, v9, v14}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lg/bvj;->SHR:Lg/bvj;

    new-instance v7, Lg/bvj;

    const-string v14, ">>>"

    const/16 v22, 0x9

    const-string v9, "USHR"

    const/16 v23, 0x4

    const/16 v11, 0xa

    invoke-direct {v7, v9, v11, v14}, Lg/bvj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lg/bvj;->USHR:Lg/bvj;

    const/16 v9, 0xb

    new-array v9, v9, [Lg/bvj;

    aput-object v0, v9, v16

    aput-object v1, v9, v17

    aput-object v2, v9, v19

    aput-object v4, v9, v21

    aput-object v6, v9, v23

    aput-object v8, v9, v13

    aput-object v10, v9, v15

    aput-object v12, v9, v18

    aput-object v3, v9, v20

    aput-object v5, v9, v22

    aput-object v7, v9, v11

    sput-object v9, Lg/bvj;->a:[Lg/bvj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/bvj;->symbol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bvj;
    .locals 1

    const-class v0, Lg/bvj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bvj;

    return-object p0
.end method

.method public static values()[Lg/bvj;
    .locals 1

    sget-object v0, Lg/bvj;->a:[Lg/bvj;

    invoke-virtual {v0}, [Lg/bvj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bvj;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bvj;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 3

    sget-object v0, Lg/fir;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
