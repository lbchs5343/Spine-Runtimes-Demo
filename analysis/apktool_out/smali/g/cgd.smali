.class public final Lg/cgd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lg/dbf;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lg/dbf;

.field public d:Lg/faq;

.field public e:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lg/dja;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/dja;-><init>(I)V

    new-instance v2, Lg/dja;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lg/dja;-><init>(I)V

    new-instance v4, Lg/dja;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lg/dja;-><init>(I)V

    new-instance v6, Lg/dja;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lg/dja;-><init>(I)V

    new-instance v8, Lg/dja;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Lg/dja;-><init>(I)V

    new-instance v10, Lg/dja;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lg/dja;-><init>(I)V

    new-instance v12, Lg/dja;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Lg/dja;-><init>(I)V

    new-instance v14, Lg/dja;

    const/4 v15, 0x6

    invoke-direct {v14, v15}, Lg/dja;-><init>(I)V

    const/16 v16, 0x5

    new-instance v1, Lg/dja;

    const/16 v17, 0x7

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lg/dja;-><init>(I)V

    const/16 v18, 0x2

    const/16 v3, 0x9

    new-array v3, v3, [Lg/ckz;

    aput-object v0, v3, v7

    aput-object v2, v3, v11

    aput-object v4, v3, v18

    aput-object v6, v3, v5

    aput-object v8, v3, v13

    aput-object v10, v3, v16

    aput-object v12, v3, v15

    aput-object v14, v3, v17

    aput-object v1, v3, v9

    new-instance v0, Lg/cfg;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lg/cfg;-><init>(I)V

    :goto_0
    if-ltz v9, :cond_0

    aget-object v1, v3, v9

    new-instance v2, Lg/clx;

    const/16 v4, 0xb

    invoke-direct {v2, v4, v1, v0, v7}, Lg/clx;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    add-int/lit8 v9, v9, -0x1

    move-object v0, v2

    goto :goto_0

    :cond_0
    sput-object v0, Lg/cgd;->a:Lg/dbf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lg/cgd;->e:Ljava/util/LinkedList;

    sget-object v0, Lg/cgd;->a:Lg/dbf;

    iput-object v0, p0, Lg/cgd;->c:Lg/dbf;

    iput-object p1, p0, Lg/cgd;->b:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lg/cgd;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lg/dwb;

    const-string v2, "Unable to parse expression:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final f()V
    .locals 6

    iget-object v0, p0, Lg/cgd;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lg/cgd;->c:Lg/dbf;

    iget-object v5, p0, Lg/cgd;->e:Ljava/util/LinkedList;

    invoke-interface {v4, v0, v3, v5}, Lg/dbf;->o(Ljava/lang/String;ILjava/util/Deque;)I

    move-result v4

    if-eq v4, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unrecognized expression, unrecognized characters encountered during parsing:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v4, p0, Lg/cgd;->e:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/faq;

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {v1, v0, v3}, Lg/dyd;->bb(Ljava/util/AbstractList;Ljava/lang/String;I)Lg/faq;

    move-result-object v0

    iput-object v0, p0, Lg/cgd;->d:Lg/faq;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cgd;->e:Ljava/util/LinkedList;

    return-void
.end method
