.class public final enum Lg/ekx;
.super Ljava/lang/Enum;

# interfaces
.implements Lg/axb;


# static fields
.field public static final synthetic a:[Lg/ekx;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashSet;

.field public static final enum d:Lg/ekx;

.field public static final enum dq:Lg/ekx;

.field public static final enum ia:Lg/ekx;

.field public static final enum ig:Lg/ekx;

.field public static final enum iw:Lg/ekx;

.field public static final enum jy:Lg/ekx;

.field public static final enum kk:Lg/ekx;

.field public static final enum mn:Lg/ekx;

.field public static final enum mp:Lg/ekx;

.field public static final enum no:Lg/ekx;

.field public static final enum o:Lg/ekx;

.field public static final enum ox:Lg/ekx;

.field public static final enum p:Lg/ekx;

.field public static final enum q:Lg/ekx;

.field public static final enum s:Lg/ekx;


# instance fields
.field private final cd:Ljava/lang/String;

.field private final gh:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lg/ekx;

    const-string v1, "?"

    const/4 v2, 0x0

    const-string v3, "QUESTION"

    invoke-direct {v0, v2, v2, v3, v1}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lg/ekx;->dq:Lg/ekx;

    new-instance v1, Lg/ekx;

    const-string v3, ":"

    const/4 v4, 0x1

    const-string v5, "COLON"

    invoke-direct {v1, v4, v2, v5, v3}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lg/ekx;->d:Lg/ekx;

    new-instance v3, Lg/ekx;

    const-string v5, "&&"

    const/4 v6, 0x2

    const-string v7, "DOUBLE_AMP"

    invoke-direct {v3, v6, v4, v7, v5}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lg/ekx;->ox:Lg/ekx;

    new-instance v5, Lg/ekx;

    const-string v7, "||"

    const/4 v8, 0x3

    const-string v9, "DOUBLE_BAR"

    invoke-direct {v5, v8, v4, v9, v7}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lg/ekx;->p:Lg/ekx;

    new-instance v7, Lg/ekx;

    const-string v9, "=="

    const/4 v10, 0x4

    const-string v11, "EQ"

    invoke-direct {v7, v10, v6, v11, v9}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lg/ekx;->s:Lg/ekx;

    new-instance v9, Lg/ekx;

    const-string v11, ">"

    const/4 v12, 0x5

    const-string v13, "GT"

    invoke-direct {v9, v12, v6, v13, v11}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lg/ekx;->iw:Lg/ekx;

    new-instance v11, Lg/ekx;

    const-string v13, "<"

    const/4 v14, 0x6

    const-string v15, "LT"

    invoke-direct {v11, v14, v6, v15, v13}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lg/ekx;->mn:Lg/ekx;

    new-instance v13, Lg/ekx;

    const-string v15, "<="

    const/16 v16, 0x0

    const/4 v2, 0x7

    const/16 v17, 0x1

    const-string v4, "LT_EQ"

    invoke-direct {v13, v2, v6, v4, v15}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lg/ekx;->ia:Lg/ekx;

    new-instance v4, Lg/ekx;

    const-string v15, ">="

    const/16 v18, 0x7

    const/16 v2, 0x8

    const/16 v19, 0x5

    const-string v12, "GT_EQ"

    invoke-direct {v4, v2, v6, v12, v15}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lg/ekx;->kk:Lg/ekx;

    new-instance v12, Lg/ekx;

    const-string v15, "!="

    const/16 v20, 0x8

    const/16 v2, 0x9

    const/16 v21, 0x6

    const-string v14, "NOT_EQ"

    invoke-direct {v12, v2, v6, v14, v15}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lg/ekx;->o:Lg/ekx;

    new-instance v14, Lg/ekx;

    const-string v15, "+"

    const/16 v22, 0x9

    const/16 v2, 0xa

    const/16 v23, 0x2

    const-string v6, "PLUS"

    invoke-direct {v14, v2, v8, v6, v15}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lg/ekx;->no:Lg/ekx;

    new-instance v6, Lg/ekx;

    const-string v15, "-"

    const/16 v24, 0xa

    const/16 v2, 0xb

    const-string v10, "MINUS"

    invoke-direct {v6, v2, v8, v10, v15}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lg/ekx;->ig:Lg/ekx;

    new-instance v10, Lg/ekx;

    const-string v15, "*"

    const/16 v26, 0xb

    const/16 v2, 0xc

    const/16 v27, 0x3

    const-string v8, "MULTI"

    move-object/from16 v28, v0

    const/4 v0, 0x4

    invoke-direct {v10, v2, v0, v8, v15}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lg/ekx;->mp:Lg/ekx;

    new-instance v8, Lg/ekx;

    const-string v15, "/"

    const/16 v25, 0xc

    const/16 v2, 0xd

    move-object/from16 v29, v1

    const-string v1, "DIVISION"

    invoke-direct {v8, v2, v0, v1, v15}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lg/ekx;->q:Lg/ekx;

    new-instance v1, Lg/ekx;

    const-string v15, "%"

    const/16 v30, 0xd

    const/16 v2, 0xe

    move-object/from16 v31, v3

    const-string v3, "MOD"

    invoke-direct {v1, v2, v0, v3, v15}, Lg/ekx;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lg/ekx;->jy:Lg/ekx;

    const/16 v3, 0xf

    new-array v3, v3, [Lg/ekx;

    aput-object v28, v3, v16

    aput-object v29, v3, v17

    aput-object v31, v3, v23

    aput-object v5, v3, v27

    aput-object v7, v3, v0

    aput-object v9, v3, v19

    aput-object v11, v3, v21

    aput-object v13, v3, v18

    aput-object v4, v3, v20

    aput-object v12, v3, v22

    aput-object v14, v3, v24

    aput-object v6, v3, v26

    aput-object v10, v3, v25

    aput-object v8, v3, v30

    aput-object v1, v3, v2

    sput-object v3, Lg/ekx;->a:[Lg/ekx;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lg/ekx;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lg/ekx;->c:Ljava/util/HashSet;

    invoke-static {}, Lg/ekx;->values()[Lg/ekx;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lg/ekx;->b:Ljava/util/HashMap;

    iget-object v5, v3, Lg/ekx;->cd:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lg/ekx;->c:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lg/ekx;->cd:Ljava/lang/String;

    iput p2, p0, Lg/ekx;->gh:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ekx;
    .locals 1

    const-class v0, Lg/ekx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ekx;

    return-object p0
.end method

.method public static values()[Lg/ekx;
    .locals 1

    sget-object v0, Lg/ekx;->a:[Lg/ekx;

    invoke-virtual {v0}, [Lg/ekx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ekx;

    return-object v0
.end method


# virtual methods
.method public final e()I
    .locals 1

    iget v0, p0, Lg/ekx;->gh:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/ekx;->cd:Ljava/lang/String;

    return-object v0
.end method
