.class public final Lg/erd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/erd;->a:Ljava/lang/String;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/erd;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lg/erd;->b:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/erd;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lg/erd;->b:I

    return-void
.end method


# virtual methods
.method public c(Lg/dnp;)V
    .locals 4

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lg/erd;->e(C)V

    iget v0, p0, Lg/erd;->b:I

    iget-object v1, p0, Lg/erd;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p1, Lg/dnp;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {p0}, Lg/erd;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lg/erd;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    iput-object v0, p1, Lg/dnp;->e:Ljava/util/List;

    :goto_0
    invoke-virtual {p0, v2}, Lg/erd;->e(C)V

    invoke-virtual {p0}, Lg/erd;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lg/dnp;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lg/erd;->b:I

    iget-object v1, p0, Lg/erd;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_8

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_7

    const/16 v3, 0x46

    if-eq v2, v3, :cond_6

    const/16 v3, 0x53

    if-eq v2, v3, :cond_5

    const/16 v3, 0x56

    if-eq v2, v3, :cond_4

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x49

    if-eq v2, v3, :cond_2

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lg/cyf;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected char \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' in descriptor "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "D"

    goto :goto_0

    :pswitch_1
    const-string v1, "C"

    goto :goto_0

    :pswitch_2
    const-string v1, "B"

    goto :goto_0

    :cond_1
    const-string v1, "J"

    goto :goto_0

    :cond_2
    const-string v1, "I"

    goto :goto_0

    :cond_3
    const-string v1, "Z"

    goto :goto_0

    :cond_4
    const-string v1, "V"

    goto :goto_0

    :cond_5
    const-string v1, "S"

    goto :goto_0

    :cond_6
    const-string v1, "F"

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/erd;->b:I

    return-object v1

    :cond_7
    iget v0, p0, Lg/erd;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/erd;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/erd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/16 v2, 0x3b

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput v2, p0, Lg/erd;->b:I

    return-object v0

    :cond_9
    new-instance v0, Lg/cyf;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected object type descriptor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(C)V
    .locals 4

    iget v0, p0, Lg/erd;->b:I

    iget-object v1, p0, Lg/erd;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    iget p1, p0, Lg/erd;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/erd;->b:I

    return-void

    :cond_0
    new-instance v0, Lg/cyf;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected char in descriptor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at pos "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/erd;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
