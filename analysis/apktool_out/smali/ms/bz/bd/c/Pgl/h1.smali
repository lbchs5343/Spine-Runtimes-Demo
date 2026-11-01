.class public Lms/bz/bd/c/Pgl/h1;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:I = -0x1

.field public static volatile b:Ljava/lang/String; = ""


# direct methods
.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lms/bz/bd/c/Pgl/h1;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-ne v0, v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lms/bz/bd/c/Pgl/h1;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    sget-object p0, Lms/bz/bd/c/Pgl/h1;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static d()Landroid/app/Activity;
    .locals 13

    const-string v4, "c72f9f"

    const/16 v0, 0x1a

    const/4 v6, 0x0

    :try_start_0
    new-array v5, v0, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "3d6a05"

    const/16 v1, 0x15

    :try_start_1
    new-array v12, v1, [B

    fill-array-data v12, :array_1

    const v7, 0x1000001

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "38f688"

    const/16 v2, 0xb

    :try_start_2
    new-array v12, v2, [B

    fill-array-data v12, :array_2

    const v7, 0x1000001

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-object v6

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "db487b"

    const/4 v4, 0x6

    :try_start_3
    new-array v12, v4, [B

    fill-array-data v12, :array_3

    const v7, 0x1000001

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v4, :cond_1

    const-string v11, "2f1fc6"

    const/16 v0, 0x8

    :try_start_4
    new-array v12, v0, [B

    fill-array-data v12, :array_4

    const v7, 0x1000001

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x4

    new-array v12, v0, [B

    fill-array-data v12, :array_5

    const-wide/16 v9, 0x0

    const-string v11, "bda4f4"

    const v7, 0x1000001

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v6

    nop

    :array_0
    .array-data 1
        0x73t
        0x3bt
        0x45t
        0x0t
        0x9t
        0x78t
        0x64t
        0x58t
        0x62t
        0x26t
        0x62t
        0x7bt
        0x60t
        0x11t
        0x12t
        0x78t
        0x76t
        0x1ft
        0x77t
        0x2ft
        0x46t
        0x3dt
        0x53t
        0x17t
        0x7t
        0x75t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x21t
        0x73t
        0x57t
        0x7t
        0xat
        0x2ct
        0x24t
        0x64t
        0x64t
        0x25t
        0x2bt
        0x70t
        0x4ct
        0x1t
        0x16t
        0x16t
        0x38t
        0x57t
        0x62t
        0x30t
        0x26t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2ft
        0x1bt
        0x16t
        0x56t
        0xet
        0x39t
        0x39t
        0xdt
        0x3et
        0x63t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x65t
        0x61t
        0x52t
        0x5ft
        0xdt
        0x71t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x22t
        0x67t
        0x56t
        0x1bt
        0x4at
        0x28t
        0x25t
        0x5et
    .end array-data

    :array_5
    .array-data 1
        0x72t
        0x6ft
        0x2dt
        0x47t
    .end array-data
.end method
