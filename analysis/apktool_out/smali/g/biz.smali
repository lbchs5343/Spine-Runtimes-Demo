.class public abstract Lg/biz;
.super Ljava/lang/Object;


# instance fields
.field public final b:Landroid/graphics/Rect;

.field public c:I

.field public d:I

.field public final e:Lg/dan;

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lg/dbj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/biz;->i:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lg/biz;->b:Landroid/graphics/Rect;

    iput-object p1, p0, Lg/biz;->e:Lg/dan;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;ILandroid/graphics/Bitmap;Lg/dcq;)Landroid/graphics/Bitmap;
.end method
