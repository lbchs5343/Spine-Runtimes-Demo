.class public final Lg/dtk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(IIILjava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/dtk;->c:I

    iput p2, p0, Lg/dtk;->d:I

    iput p3, p0, Lg/dtk;->e:I

    iput-object p4, p0, Lg/dtk;->a:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Lg/dtk;->b:Z

    return-void
.end method
