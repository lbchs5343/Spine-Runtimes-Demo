.class public final Lg/chr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fgl;


# static fields
.field public static final a:Lg/duh;

.field public static final b:Lg/duh;

.field public static final c:Lg/duh;

.field public static final d:Lg/duh;

.field public static final e:Lg/duh;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lg/gbd;->b()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lg/gez;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lg/gez;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.test.boolean_flag"

    invoke-virtual {v1, v0, v3}, Lg/gez;->i(Ljava/lang/String;Z)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/chr;->c:Lg/duh;

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v2, Lg/duh;

    const-string v3, "measurement.test.double_flag"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v0, v4}, Lg/duh;-><init>(Lg/gez;Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v2, Lg/chr;->d:Lg/duh;

    const-string v0, "measurement.test.int_flag"

    const-wide/16 v2, -0x2

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/chr;->e:Lg/duh;

    const-string v0, "measurement.test.long_flag"

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lg/gez;->m(JLjava/lang/String;)Lg/duh;

    move-result-object v0

    sput-object v0, Lg/chr;->a:Lg/duh;

    new-instance v0, Lg/duh;

    const/4 v2, 0x3

    const-string v3, "measurement.test.string_flag"

    const-string v4, "---"

    invoke-direct {v0, v1, v3, v4, v2}, Lg/duh;-><init>(Lg/gez;Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v0, Lg/chr;->b:Lg/duh;

    return-void
.end method
