.class public final Lg/gve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ebv;


# static fields
.field public static final a:Lg/gve;

.field public static final b:Lg/gve;

.field public static final c:Lg/gve;

.field public static final d:Lg/gve;

.field public static final e:Lg/gve;

.field public static final f:Lg/gve;

.field public static final g:Lg/gve;

.field public static final h:Lg/gve;


# instance fields
.field public final synthetic i:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gve;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/gve;-><init>(I)V

    sput-object v0, Lg/gve;->f:Lg/gve;

    new-instance v0, Lg/gve;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/gve;-><init>(I)V

    sput-object v0, Lg/gve;->g:Lg/gve;

    new-instance v0, Lg/gve;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/gve;-><init>(I)V

    sput-object v0, Lg/gve;->b:Lg/gve;

    new-instance v0, Lg/gve;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/gve;-><init>(I)V

    sput-object v0, Lg/gve;->c:Lg/gve;

    new-instance v0, Lg/gve;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/gve;-><init>(I)V

    sput-object v0, Lg/gve;->d:Lg/gve;

    new-instance v0, Lg/gve;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg/gve;-><init>(I)V

    sput-object v0, Lg/gve;->h:Lg/gve;

    new-instance v0, Lg/gve;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lg/gve;-><init>(I)V

    sput-object v0, Lg/gve;->a:Lg/gve;

    new-instance v0, Lg/gve;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lg/gve;-><init>(I)V

    sput-object v0, Lg/gve;->e:Lg/gve;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/gve;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 2

    iget v0, p0, Lg/gve;->i:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :pswitch_0
    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    :goto_0
    return p1

    :pswitch_2
    packed-switch p1, :pswitch_data_2

    :pswitch_3
    const/4 p1, 0x0

    goto :goto_1

    :pswitch_4
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_5
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0

    :pswitch_6
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    sget-object p1, Lg/apl;->zzd:Lg/apl;

    goto :goto_2

    :cond_3
    sget-object p1, Lg/apl;->zzc:Lg/apl;

    goto :goto_2

    :cond_4
    sget-object p1, Lg/apl;->zzb:Lg/apl;

    goto :goto_2

    :cond_5
    sget-object p1, Lg/apl;->zza:Lg/apl;

    :goto_2
    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0

    :pswitch_7
    invoke-static {p1}, Lg/hm;->b(I)Lg/hm;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    return p1

    :pswitch_8
    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const/4 p1, 0x0

    goto :goto_5

    :pswitch_9
    const/4 p1, 0x1

    :goto_5
    return p1

    :pswitch_a
    packed-switch p1, :pswitch_data_5

    const/4 p1, 0x0

    goto :goto_6

    :pswitch_b
    const/4 p1, 0x1

    :goto_6
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x16
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
