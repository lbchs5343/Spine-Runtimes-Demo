.class public abstract Lg/erx;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final b:Landroid/util/SparseArray;

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lg/erx;->b:Landroid/util/SparseArray;

    const/4 v0, 0x1

    sput v0, Lg/erx;->c:I

    return-void
.end method
