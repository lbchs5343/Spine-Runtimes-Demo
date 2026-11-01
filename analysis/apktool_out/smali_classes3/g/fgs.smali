.class public final Lg/fgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lg/fgs;

.field public final c:Lg/akf;

.field public d:Z

.field public final e:Lg/fpu;

.field public final f:Lg/bvu;

.field public g:Z


# direct methods
.method public constructor <init>(Lg/akf;Landroid/widget/ImageView;Lg/fpu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fgs;->c:Lg/akf;

    iput-object p3, p0, Lg/fgs;->e:Lg/fpu;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lg/bvu;

    iget-object p1, p1, Lg/akf;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p0, p2, p1}, Lg/bvu;-><init>(Lg/fgs;Landroid/widget/ImageView;Ljava/lang/ref/ReferenceQueue;)V

    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lg/fgs;->f:Lg/bvu;

    iput-object p4, p0, Lg/fgs;->a:Ljava/lang/String;

    iput-object p0, p0, Lg/fgs;->b:Lg/fgs;

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/fgs;->f:Lg/bvu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
