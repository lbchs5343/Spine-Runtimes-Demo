.class public final Lg/zz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/zz;

.field public static final b:Lg/zz;

.field public static final c:Lg/zz;

.field public static final d:Lg/zz;

.field public static final e:Ljava/util/HashMap;

.field public static final f:Lg/zz;

.field public static final g:Lg/zz;

.field public static final h:Lg/zz;

.field public static final i:Lg/zz;

.field public static final j:Lg/zz;

.field public static final k:Lg/zz;

.field public static final l:Lg/zz;

.field public static final m:Lg/zz;

.field public static final n:Lg/zz;

.field public static final o:Lg/zz;

.field public static final p:Lg/zz;

.field public static final q:Lg/zz;

.field public static final r:Lg/zz;


# instance fields
.field public final s:I

.field public final t:Ljava/lang/String;

.field public final u:Lg/tj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lg/zz;->e:Ljava/util/HashMap;

    new-instance v0, Lg/bfb;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lg/bfb;-><init>(I)V

    const-string v1, "ConstantValue"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->q:Lg/zz;

    new-instance v0, Lg/bfb;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg/bfb;-><init>(I)V

    const-string v1, "Code"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->a:Lg/zz;

    new-instance v0, Lg/kf;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    const-string v1, "LineNumberTable"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->n:Lg/zz;

    new-instance v0, Lg/kf;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    const-string v1, "LocalVariableTable"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->b:Lg/zz;

    new-instance v0, Lg/kf;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    const-string v1, "LocalVariableTypeTable"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->f:Lg/zz;

    new-instance v0, Lg/bfb;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lg/bfb;-><init>(I)V

    const-string v1, "InnerClasses"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->g:Lg/zz;

    new-instance v0, Lg/bfb;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lg/bfb;-><init>(I)V

    const-string v1, "BootstrapMethods"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->i:Lg/zz;

    sget-object v0, Lg/any;->RUNTIME:Lg/any;

    new-instance v1, Lg/aac;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lg/aac;-><init>(Lg/any;I)V

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-static {v2, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v1

    sput-object v1, Lg/zz;->l:Lg/zz;

    sget-object v1, Lg/any;->BUILD:Lg/any;

    new-instance v2, Lg/aac;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lg/aac;-><init>(Lg/any;I)V

    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-static {v3, v2}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v2

    sput-object v2, Lg/zz;->d:Lg/zz;

    new-instance v2, Lg/aac;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lg/aac;-><init>(Lg/any;I)V

    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-static {v0, v2}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->c:Lg/zz;

    new-instance v0, Lg/aac;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/aac;-><init>(Lg/any;I)V

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->k:Lg/zz;

    new-instance v0, Lg/bfb;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lg/bfb;-><init>(I)V

    const-string v1, "AnnotationDefault"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->o:Lg/zz;

    new-instance v0, Lg/kf;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    const-string v1, "SourceFile"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->r:Lg/zz;

    new-instance v0, Lg/kf;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    const-string v1, "Signature"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->j:Lg/zz;

    new-instance v0, Lg/bfb;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lg/bfb;-><init>(I)V

    const-string v1, "Exceptions"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->p:Lg/zz;

    new-instance v0, Lg/kf;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lg/kf;-><init>(I)V

    const-string v1, "MethodParameters"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->h:Lg/zz;

    new-instance v0, Lg/bls;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "StackMapTable"

    invoke-static {v1, v0}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    move-result-object v0

    sput-object v0, Lg/zz;->m:Lg/zz;

    const-string v0, "Deprecated"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    const-string v0, "Synthetic"

    invoke-static {v0, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    const-string v0, "EnclosingMethod"

    invoke-static {v0, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-static {v0, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-static {v0, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    const-string v0, "Module"

    invoke-static {v0, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    const-string v0, "NestHost"

    invoke-static {v0, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    const-string v0, "NestMembers"

    invoke-static {v0, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    const-string v0, "SourceDebugExtension"

    invoke-static {v0, v1}, Lg/zz;->v(Ljava/lang/String;Lg/tj;)Lg/zz;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lg/tj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/zz;->s:I

    iput-object p2, p0, Lg/zz;->t:Ljava/lang/String;

    iput-object p3, p0, Lg/zz;->u:Lg/tj;

    return-void
.end method

.method public static v(Ljava/lang/String;Lg/tj;)Lg/zz;
    .locals 3

    new-instance v0, Lg/zz;

    sget-object v1, Lg/zz;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v0, v2, p0, p1}, Lg/zz;-><init>(ILjava/lang/String;Lg/tj;)V

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lg/zz;

    iget p1, p1, Lg/zz;->s:I

    iget v1, p0, Lg/zz;->s:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lg/zz;->s:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/zz;->t:Ljava/lang/String;

    return-object v0
.end method
