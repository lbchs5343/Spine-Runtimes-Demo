.class public final synthetic Lg/chs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/LinkedHashMap;

.field public final synthetic b:I

.field public final synthetic c:Lb/c/d;


# direct methods
.method public synthetic constructor <init>(Lb/c/d;Ljava/util/LinkedHashMap;I)V
    .locals 0

    iput p3, p0, Lg/chs;->b:I

    iput-object p1, p0, Lg/chs;->c:Lb/c/d;

    iput-object p2, p0, Lg/chs;->a:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/chs;->b:I

    iget-object v1, p0, Lg/chs;->a:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lg/chs;->c:Lb/c/d;

    packed-switch v0, :pswitch_data_0

    sget v0, Lb/c/d;->d:I

    invoke-virtual {v2, v1}, Lb/c/d;->aj(Ljava/util/LinkedHashMap;)V

    return-void

    :pswitch_0
    sget v0, Lb/c/d;->d:I

    invoke-virtual {v2, v1}, Lb/c/d;->ag(Ljava/util/LinkedHashMap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
