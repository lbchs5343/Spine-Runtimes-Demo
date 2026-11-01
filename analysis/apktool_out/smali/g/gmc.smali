.class public final enum Lg/gmc;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BLOCK:Lg/gmc;

.field public static final enum BLOCK_CONDENSED:Lg/gmc;

.field public static final enum JAVADOC:Lg/gmc;

.field public static final enum JAVADOC_CONDENSED:Lg/gmc;

.field public static final enum LINE:Lg/gmc;

.field public static final synthetic a:[Lg/gmc;


# instance fields
.field private final end:Ljava/lang/String;

.field private final onNewLine:Ljava/lang/String;

.field private final start:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lg/gmc;

    const-string v4, "// "

    const-string v5, ""

    const-string v1, "LINE"

    const-string v2, "// "

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lg/gmc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lg/gmc;->LINE:Lg/gmc;

    new-instance v1, Lg/gmc;

    const-string v5, " * "

    const-string v6, "\n */"

    const-string v2, "BLOCK"

    const-string v3, "/*\n * "

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lg/gmc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lg/gmc;->BLOCK:Lg/gmc;

    new-instance v2, Lg/gmc;

    const-string v6, " * "

    const-string v7, " */"

    const-string v3, "BLOCK_CONDENSED"

    const-string v4, "/* "

    const/4 v5, 0x2

    invoke-direct/range {v2 .. v7}, Lg/gmc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lg/gmc;->BLOCK_CONDENSED:Lg/gmc;

    new-instance v3, Lg/gmc;

    const-string v7, " * "

    const-string v8, "\n */"

    const-string v4, "JAVADOC"

    const-string v5, "/**\n * "

    const/4 v6, 0x3

    invoke-direct/range {v3 .. v8}, Lg/gmc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lg/gmc;->JAVADOC:Lg/gmc;

    new-instance v4, Lg/gmc;

    const-string v8, " * "

    const-string v9, " */"

    const-string v5, "JAVADOC_CONDENSED"

    const-string v6, "/** "

    const/4 v7, 0x4

    invoke-direct/range {v4 .. v9}, Lg/gmc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lg/gmc;->JAVADOC_CONDENSED:Lg/gmc;

    const/4 v5, 0x5

    new-array v5, v5, [Lg/gmc;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Lg/gmc;->a:[Lg/gmc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lg/gmc;->start:Ljava/lang/String;

    iput-object p4, p0, Lg/gmc;->onNewLine:Ljava/lang/String;

    iput-object p5, p0, Lg/gmc;->end:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/gmc;
    .locals 1

    const-class v0, Lg/gmc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/gmc;

    return-object p0
.end method

.method public static values()[Lg/gmc;
    .locals 1

    sget-object v0, Lg/gmc;->a:[Lg/gmc;

    invoke-virtual {v0}, [Lg/gmc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gmc;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gmc;->end:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gmc;->onNewLine:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gmc;->start:Ljava/lang/String;

    return-object v0
.end method
