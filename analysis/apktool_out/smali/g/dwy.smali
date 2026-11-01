.class public final Lg/dwy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;


# instance fields
.field public final b:Lg/gyo;

.field public final c:Lg/bpo;

.field public final d:Lg/gql;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/util/HashSet;

    const-string v11, "transition"

    const-string v12, "xml"

    const-string v1, "anim"

    const-string v2, "animator"

    const-string v3, "font"

    const-string v4, "id"

    const-string v5, "interpolator"

    const-string v6, "layout"

    const-string v7, "menu"

    const-string v8, "mipmap"

    const-string v9, "navigation"

    const-string v10, "raw"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lg/dwy;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lg/gyo;Lg/bpo;Lg/gql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dwy;->b:Lg/gyo;

    iput-object p2, p0, Lg/dwy;->c:Lg/bpo;

    iput-object p3, p0, Lg/dwy;->d:Lg/gql;

    return-void
.end method

.method public static e(Lg/eos;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "res/"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    check-cast v0, Lg/grs;

    invoke-virtual {v0}, Lg/grs;->ag()V

    const/16 v0, 0x3c

    invoke-interface {p0, v0}, Lg/eos;->a(C)Lg/eos;

    move-result-object v0

    invoke-interface {v0, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    const/16 v0, 0x22

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    const-string v1, "attr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "name=\""

    const/16 v4, 0x20

    if-eqz v1, :cond_2

    invoke-interface {p0, v4}, Lg/eos;->a(C)Lg/eos;

    move-result-object v1

    invoke-interface {v1, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object v1

    const-string v3, "id."

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p3

    const-string v1, "\" value=\""

    invoke-interface {p3, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p3

    invoke-interface {p3, p4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p3

    invoke-interface {p3, v0}, Lg/eos;->a(C)Lg/eos;

    goto :goto_1

    :cond_2
    const-string v1, "style"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0, v4}, Lg/eos;->a(C)Lg/eos;

    move-result-object p4

    invoke-interface {p4, v3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p4

    const-string v1, "attr."

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p3

    invoke-interface {p3, v0}, Lg/eos;->a(C)Lg/eos;

    goto :goto_1

    :cond_3
    invoke-interface {p0, v4}, Lg/eos;->a(C)Lg/eos;

    move-result-object v1

    invoke-interface {v1, p3}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p3

    const-string v1, "=\""

    invoke-interface {p3, v1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p3

    invoke-interface {p3, p4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p3

    invoke-interface {p3, v0}, Lg/eos;->a(C)Lg/eos;

    :cond_4
    :goto_1
    const-string p3, "string"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_c

    const-string p4, "%"

    invoke-virtual {p5, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_c

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x25

    invoke-virtual {p5, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_b

    add-int/lit8 v6, v4, 0x1

    if-ne v6, v3, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_6

    move v4, v7

    goto :goto_2

    :cond_6
    const/16 v5, 0x30

    if-lt v6, v5, :cond_9

    const/16 v8, 0x39

    if-gt v6, v8, :cond_9

    if-ge v7, v3, :cond_9

    :goto_3
    add-int/lit8 v6, v7, 0x1

    invoke-virtual {p5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_7

    if-gt v7, v8, :cond_7

    if-ge v6, v3, :cond_7

    move v7, v6

    goto :goto_3

    :cond_7
    const/16 v5, 0x24

    if-ne v7, v5, :cond_a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v4, v6

    goto :goto_2

    :cond_9
    move v6, v7

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_8

    :cond_b
    :goto_4
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p4

    const/4 p4, 0x1

    if-le v2, p4, :cond_c

    const-string p4, " formatted=\"false\""

    invoke-interface {p0, p4}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :cond_c
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_d

    const-string p1, " />"

    invoke-interface {p0, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    return-void

    :cond_d
    const/16 p4, 0x3e

    invoke-interface {p0, p4}, Lg/eos;->a(C)Lg/eos;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_10

    const-string p3, "array"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p3, 0x40

    if-eq p1, p3, :cond_e

    goto :goto_6

    :cond_e
    sget-object p1, Lg/foj;->a:Lg/foj;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_5
    if-ge v1, p1, :cond_f

    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p3, v0}, Lg/foj;->h(Ljava/lang/StringBuilder;C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    goto :goto_9

    :cond_10
    :goto_6
    sget-object p1, Lg/foj;->a:Lg/foj;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_7
    if-ge v1, p1, :cond_13

    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_12

    const/16 v3, 0x27

    if-eq v2, v3, :cond_11

    invoke-static {p3, v2}, Lg/foj;->h(Ljava/lang/StringBuilder;C)V

    goto :goto_8

    :cond_11
    const-string v2, "\\\'"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    const-string v2, "\\\""

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    :goto_9
    const-string p1, "</"

    invoke-interface {p0, p1}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p0

    invoke-interface {p0, p2}, Lg/eos;->d(Ljava/lang/String;)Lg/eos;

    move-result-object p0

    invoke-interface {p0, p4}, Lg/eos;->a(C)Lg/eos;

    return-void
.end method
