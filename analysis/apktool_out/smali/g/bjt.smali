.class public final enum Lg/bjt;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ARRAY:Lg/bjt;

.field public static final enum BOOLEAN:Lg/bjt;

.field public static final enum BYTE:Lg/bjt;

.field public static final enum CHAR:Lg/bjt;

.field public static final enum DOUBLE:Lg/bjt;

.field public static final enum FLOAT:Lg/bjt;

.field public static final enum INT:Lg/bjt;

.field public static final enum LONG:Lg/bjt;

.field public static final enum OBJECT:Lg/bjt;

.field public static final enum SHORT:Lg/bjt;

.field public static final enum VOID:Lg/bjt;

.field public static final synthetic a:[Lg/bjt;


# instance fields
.field private final boxType:Lg/cwx;

.field private final longName:Ljava/lang/String;

.field private final shortName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lg/bjt;

    const-string v1, "java.lang.Boolean"

    invoke-static {v1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v5

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const-string v3, "Z"

    const-string v4, "boolean"

    invoke-direct/range {v0 .. v5}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v0, Lg/bjt;->BOOLEAN:Lg/bjt;

    new-instance v1, Lg/bjt;

    const-string v2, "java.lang.Character"

    invoke-static {v2}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v6

    const-string v2, "CHAR"

    const/4 v3, 0x1

    const-string v4, "C"

    const-string v5, "char"

    invoke-direct/range {v1 .. v6}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v1, Lg/bjt;->CHAR:Lg/bjt;

    new-instance v2, Lg/bjt;

    const-string v3, "java.lang.Byte"

    invoke-static {v3}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v7

    const-string v3, "BYTE"

    const/4 v4, 0x2

    const-string v5, "B"

    const-string v6, "byte"

    invoke-direct/range {v2 .. v7}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v2, Lg/bjt;->BYTE:Lg/bjt;

    new-instance v3, Lg/bjt;

    const-string v4, "java.lang.Short"

    invoke-static {v4}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v8

    const-string v4, "SHORT"

    const/4 v5, 0x3

    const-string v6, "S"

    const-string v7, "short"

    invoke-direct/range {v3 .. v8}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v3, Lg/bjt;->SHORT:Lg/bjt;

    new-instance v4, Lg/bjt;

    const-string v5, "java.lang.Integer"

    invoke-static {v5}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v9

    const-string v5, "INT"

    const/4 v6, 0x4

    const-string v7, "I"

    const-string v8, "int"

    invoke-direct/range {v4 .. v9}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v4, Lg/bjt;->INT:Lg/bjt;

    new-instance v5, Lg/bjt;

    const-string v6, "java.lang.Float"

    invoke-static {v6}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v10

    const-string v6, "FLOAT"

    const/4 v7, 0x5

    const-string v8, "F"

    const-string v9, "float"

    invoke-direct/range {v5 .. v10}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v5, Lg/bjt;->FLOAT:Lg/bjt;

    new-instance v6, Lg/bjt;

    const-string v7, "java.lang.Long"

    invoke-static {v7}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v11

    const-string v7, "LONG"

    const/4 v8, 0x6

    const-string v9, "J"

    const-string v10, "long"

    invoke-direct/range {v6 .. v11}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v6, Lg/bjt;->LONG:Lg/bjt;

    new-instance v7, Lg/bjt;

    const-string v8, "java.lang.Double"

    invoke-static {v8}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v12

    const-string v8, "DOUBLE"

    const/4 v9, 0x7

    const-string v10, "D"

    const-string v11, "double"

    invoke-direct/range {v7 .. v12}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v7, Lg/bjt;->DOUBLE:Lg/bjt;

    new-instance v8, Lg/bjt;

    const-string v12, "OBJECT"

    sget-object v13, Lg/cwx;->t:Lg/aog;

    const-string v9, "OBJECT"

    const/16 v10, 0x8

    const-string v11, "L"

    invoke-direct/range {v8 .. v13}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v8, Lg/bjt;->OBJECT:Lg/bjt;

    new-instance v9, Lg/bjt;

    const-string v13, "ARRAY"

    sget-object v14, Lg/cwx;->aj:Lg/aoe;

    const-string v10, "ARRAY"

    const/16 v11, 0x9

    const-string v12, "["

    invoke-direct/range {v9 .. v14}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v9, Lg/bjt;->ARRAY:Lg/bjt;

    new-instance v10, Lg/bjt;

    const-string v11, "java.lang.Void"

    invoke-static {v11}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v15

    const-string v11, "VOID"

    const/16 v12, 0xa

    const-string v13, "V"

    const-string v14, "void"

    invoke-direct/range {v10 .. v15}, Lg/bjt;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V

    sput-object v10, Lg/bjt;->VOID:Lg/bjt;

    const/16 v11, 0xb

    new-array v11, v11, [Lg/bjt;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    sput-object v11, Lg/bjt;->a:[Lg/bjt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/cwx;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/bjt;->shortName:Ljava/lang/String;

    iput-object p4, p0, Lg/bjt;->longName:Ljava/lang/String;

    iput-object p5, p0, Lg/bjt;->boxType:Lg/cwx;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/bjt;
    .locals 1

    const-class v0, Lg/bjt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/bjt;

    return-object p0
.end method

.method public static values()[Lg/bjt;
    .locals 1

    sget-object v0, Lg/bjt;->a:[Lg/bjt;

    invoke-virtual {v0}, [Lg/bjt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bjt;

    return-object v0
.end method


# virtual methods
.method public final b()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/bjt;->boxType:Lg/cwx;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bjt;->longName:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bjt;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bjt;->longName:Ljava/lang/String;

    return-object v0
.end method
