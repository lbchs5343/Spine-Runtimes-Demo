package j$.util.concurrent;

import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
public final class q extends l {
    public static final j$.sun.misc.a h;
    public static final long i;

    /* renamed from: e, reason: collision with root package name */
    public r f20766e;

    /* renamed from: f, reason: collision with root package name */
    public volatile r f20767f;

    /* renamed from: g, reason: collision with root package name */
    public volatile Thread f20768g;
    volatile int lockState;

    static {
        j$.sun.misc.a aVar = j$.sun.misc.a.f20426b;
        h = aVar;
        i = aVar.h(q.class, "lockState");
    }

    public q(r rVar) {
        super(-2, null, null);
        int i2;
        this.f20767f = rVar;
        r rVar2 = null;
        while (rVar != null) {
            r rVar3 = (r) rVar.f20754d;
            rVar.f20771g = null;
            rVar.f20770f = null;
            if (rVar2 == null) {
                rVar.f20769e = null;
                rVar.i = false;
            } else {
                Object obj = rVar.f20752b;
                int i3 = rVar.f20751a;
                r rVar4 = rVar2;
                Class<?> cls = null;
                while (true) {
                    Object obj2 = rVar4.f20752b;
                    int i4 = rVar4.f20751a;
                    if (i4 > i3) {
                        i2 = -1;
                    } else if (i4 < i3) {
                        i2 = 1;
                    } else {
                        if (cls != null || (cls = ConcurrentHashMap.c(obj)) != null) {
                            int i5 = ConcurrentHashMap.f20732g;
                            int compareTo = (obj2 == null || obj2.getClass() != cls) ? 0 : ((Comparable) obj).compareTo(obj2);
                            if (compareTo != 0) {
                                i2 = compareTo;
                            }
                        }
                        i2 = i(obj, obj2);
                    }
                    r rVar5 = i2 <= 0 ? rVar4.f20770f : rVar4.f20771g;
                    if (rVar5 == null) {
                        break;
                    } else {
                        rVar4 = rVar5;
                    }
                }
                rVar.f20769e = rVar4;
                if (i2 <= 0) {
                    rVar4.f20770f = rVar;
                } else {
                    rVar4.f20771g = rVar;
                }
                rVar = c(rVar2, rVar);
            }
            rVar2 = rVar;
            rVar = rVar3;
        }
        this.f20766e = rVar2;
    }

    public static r b(r rVar, r rVar2) {
        while (rVar2 != null && rVar2 != rVar) {
            r rVar3 = rVar2.f20769e;
            if (rVar3 == null) {
                rVar2.i = false;
                return rVar2;
            }
            if (rVar2.i) {
                rVar2.i = false;
                return rVar;
            }
            r rVar4 = rVar3.f20770f;
            if (rVar4 == rVar2) {
                r rVar5 = rVar3.f20771g;
                if (rVar5 != null && rVar5.i) {
                    rVar5.i = false;
                    rVar3.i = true;
                    rVar = g(rVar, rVar3);
                    rVar3 = rVar2.f20769e;
                    rVar5 = rVar3 == null ? null : rVar3.f20771g;
                }
                if (rVar5 != null) {
                    r rVar6 = rVar5.f20770f;
                    r rVar7 = rVar5.f20771g;
                    if ((rVar7 == null || !rVar7.i) && (rVar6 == null || !rVar6.i)) {
                        rVar5.i = true;
                    } else {
                        if (rVar7 == null || !rVar7.i) {
                            if (rVar6 != null) {
                                rVar6.i = false;
                            }
                            rVar5.i = true;
                            rVar = h(rVar, rVar5);
                            rVar3 = rVar2.f20769e;
                            rVar5 = rVar3 != null ? rVar3.f20771g : null;
                        }
                        if (rVar5 != null) {
                            rVar5.i = rVar3 == null ? false : rVar3.i;
                            r rVar8 = rVar5.f20771g;
                            if (rVar8 != null) {
                                rVar8.i = false;
                            }
                        }
                        if (rVar3 != null) {
                            rVar3.i = false;
                            rVar = g(rVar, rVar3);
                        }
                        rVar2 = rVar;
                    }
                }
                rVar2 = rVar3;
            } else {
                if (rVar4 != null && rVar4.i) {
                    rVar4.i = false;
                    rVar3.i = true;
                    rVar = h(rVar, rVar3);
                    rVar3 = rVar2.f20769e;
                    rVar4 = rVar3 == null ? null : rVar3.f20770f;
                }
                if (rVar4 != null) {
                    r rVar9 = rVar4.f20770f;
                    r rVar10 = rVar4.f20771g;
                    if ((rVar9 == null || !rVar9.i) && (rVar10 == null || !rVar10.i)) {
                        rVar4.i = true;
                    } else {
                        if (rVar9 == null || !rVar9.i) {
                            if (rVar10 != null) {
                                rVar10.i = false;
                            }
                            rVar4.i = true;
                            rVar = g(rVar, rVar4);
                            rVar3 = rVar2.f20769e;
                            rVar4 = rVar3 != null ? rVar3.f20770f : null;
                        }
                        if (rVar4 != null) {
                            rVar4.i = rVar3 == null ? false : rVar3.i;
                            r rVar11 = rVar4.f20770f;
                            if (rVar11 != null) {
                                rVar11.i = false;
                            }
                        }
                        if (rVar3 != null) {
                            rVar3.i = false;
                            rVar = h(rVar, rVar3);
                        }
                        rVar2 = rVar;
                    }
                }
                rVar2 = rVar3;
            }
        }
        return rVar;
    }

    public static r c(r rVar, r rVar2) {
        r rVar3;
        rVar2.i = true;
        while (true) {
            r rVar4 = rVar2.f20769e;
            if (rVar4 == null) {
                rVar2.i = false;
                return rVar2;
            }
            if (!rVar4.i || (rVar3 = rVar4.f20769e) == null) {
                break;
            }
            r rVar5 = rVar3.f20770f;
            if (rVar4 == rVar5) {
                r rVar6 = rVar3.f20771g;
                if (rVar6 == null || !rVar6.i) {
                    if (rVar2 == rVar4.f20771g) {
                        rVar = g(rVar, rVar4);
                        r rVar7 = rVar4.f20769e;
                        rVar3 = rVar7 == null ? null : rVar7.f20769e;
                        rVar4 = rVar7;
                        rVar2 = rVar4;
                    }
                    if (rVar4 != null) {
                        rVar4.i = false;
                        if (rVar3 != null) {
                            rVar3.i = true;
                            rVar = h(rVar, rVar3);
                        }
                    }
                } else {
                    rVar6.i = false;
                    rVar4.i = false;
                    rVar3.i = true;
                    rVar2 = rVar3;
                }
            } else if (rVar5 == null || !rVar5.i) {
                if (rVar2 == rVar4.f20770f) {
                    rVar = h(rVar, rVar4);
                    r rVar8 = rVar4.f20769e;
                    rVar3 = rVar8 == null ? null : rVar8.f20769e;
                    rVar4 = rVar8;
                    rVar2 = rVar4;
                }
                if (rVar4 != null) {
                    rVar4.i = false;
                    if (rVar3 != null) {
                        rVar3.i = true;
                        rVar = g(rVar, rVar3);
                    }
                }
            } else {
                rVar5.i = false;
                rVar4.i = false;
                rVar3.i = true;
                rVar2 = rVar3;
            }
        }
        return rVar;
    }

    public static r g(r rVar, r rVar2) {
        r rVar3;
        if (rVar2 != null && (rVar3 = rVar2.f20771g) != null) {
            r rVar4 = rVar3.f20770f;
            rVar2.f20771g = rVar4;
            if (rVar4 != null) {
                rVar4.f20769e = rVar2;
            }
            r rVar5 = rVar2.f20769e;
            rVar3.f20769e = rVar5;
            if (rVar5 == null) {
                rVar3.i = false;
                rVar = rVar3;
            } else if (rVar5.f20770f == rVar2) {
                rVar5.f20770f = rVar3;
            } else {
                rVar5.f20771g = rVar3;
            }
            rVar3.f20770f = rVar2;
            rVar2.f20769e = rVar3;
        }
        return rVar;
    }

    public static r h(r rVar, r rVar2) {
        r rVar3;
        if (rVar2 != null && (rVar3 = rVar2.f20770f) != null) {
            r rVar4 = rVar3.f20771g;
            rVar2.f20770f = rVar4;
            if (rVar4 != null) {
                rVar4.f20769e = rVar2;
            }
            r rVar5 = rVar2.f20769e;
            rVar3.f20769e = rVar5;
            if (rVar5 == null) {
                rVar3.i = false;
                rVar = rVar3;
            } else if (rVar5.f20771g == rVar2) {
                rVar5.f20771g = rVar3;
            } else {
                rVar5.f20770f = rVar3;
            }
            rVar3.f20771g = rVar2;
            rVar2.f20769e = rVar3;
        }
        return rVar;
    }

    public static int i(Object obj, Object obj2) {
        int compareTo;
        return (obj == null || obj2 == null || (compareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : compareTo;
    }

    @Override // j$.util.concurrent.l
    public final l a(Object obj, int i2) {
        Object obj2;
        Thread thread;
        l lVar = this.f20767f;
        while (true) {
            r rVar = null;
            if (lVar == null) {
                return null;
            }
            int i3 = this.lockState;
            if ((i3 & 3) == 0) {
                j$.sun.misc.a aVar = h;
                long j = i;
                if (aVar.c(this, j, i3, i3 + 4)) {
                    try {
                        r rVar2 = this.f20766e;
                        if (rVar2 != null) {
                            rVar = rVar2.b(i2, obj, null);
                        }
                        if (aVar.e(this, j) == 6 && (thread = this.f20768g) != null) {
                            LockSupport.unpark(thread);
                        }
                        return rVar;
                    } finally {
                    }
                }
            } else if (lVar.f20751a != i2 || ((obj2 = lVar.f20752b) != obj && (obj2 == null || !obj.equals(obj2)))) {
                lVar = lVar.f20754d;
            }
        }
        return lVar;
    }

    public final void d() {
        if (h.c(this, i, 0, 1)) {
            return;
        }
        boolean z = false;
        while (true) {
            int i2 = this.lockState;
            if ((i2 & (-3)) == 0) {
                if (h.c(this, i, i2, 1)) {
                    break;
                }
            } else if ((i2 & 2) == 0) {
                if (h.c(this, i, i2, i2 | 2)) {
                    this.f20768g = Thread.currentThread();
                    z = true;
                }
            } else if (z) {
                LockSupport.park(this);
            }
        }
        if (z) {
            this.f20768g = null;
        }
    }

    public final r e(int i2, Object obj, Object obj2) {
        int i3;
        r b2;
        r b3;
        r rVar = this.f20766e;
        Class<?> cls = null;
        boolean z = false;
        while (rVar != null) {
            int i4 = rVar.f20751a;
            if (i4 > i2) {
                i3 = -1;
            } else if (i4 < i2) {
                i3 = 1;
            } else {
                Object obj3 = rVar.f20752b;
                if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                    return rVar;
                }
                if (cls != null || (cls = ConcurrentHashMap.c(obj)) != null) {
                    int i5 = ConcurrentHashMap.f20732g;
                    int compareTo = (obj3 == null || obj3.getClass() != cls) ? 0 : ((Comparable) obj).compareTo(obj3);
                    if (compareTo != 0) {
                        i3 = compareTo;
                    }
                }
                if (!z) {
                    r rVar2 = rVar.f20770f;
                    if (rVar2 != null && (b3 = rVar2.b(i2, obj, cls)) != null) {
                        return b3;
                    }
                    r rVar3 = rVar.f20771g;
                    if (rVar3 != null && (b2 = rVar3.b(i2, obj, cls)) != null) {
                        return b2;
                    }
                    z = true;
                }
                i3 = i(obj, obj3);
            }
            r rVar4 = i3 <= 0 ? rVar.f20770f : rVar.f20771g;
            if (rVar4 == null) {
                r rVar5 = this.f20767f;
                r rVar6 = new r(i2, obj, obj2, rVar5, rVar);
                this.f20767f = rVar6;
                if (rVar5 != null) {
                    rVar5.h = rVar6;
                }
                if (i3 <= 0) {
                    rVar.f20770f = rVar6;
                } else {
                    rVar.f20771g = rVar6;
                }
                if (!rVar.i) {
                    rVar6.i = true;
                    return null;
                }
                d();
                try {
                    this.f20766e = c(this.f20766e, rVar6);
                    return null;
                } finally {
                    this.lockState = 0;
                }
            }
            rVar = rVar4;
        }
        r rVar7 = new r(i2, obj, obj2, null, null);
        this.f20766e = rVar7;
        this.f20767f = rVar7;
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0091 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b5 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bd A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c0 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ad A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x0030, B:25:0x0039, B:29:0x003f, B:31:0x004d, B:32:0x0068, B:34:0x006e, B:35:0x0070, B:41:0x0091, B:44:0x00a2, B:45:0x0099, B:47:0x009d, B:48:0x00a0, B:49:0x00a8, B:52:0x00b1, B:54:0x00b5, B:56:0x00b9, B:58:0x00bd, B:59:0x00c6, B:61:0x00c0, B:63:0x00c4, B:66:0x00ad, B:68:0x007a, B:70:0x007e, B:71:0x0081, B:72:0x0055, B:74:0x005b, B:76:0x005f, B:77:0x0062, B:78:0x0064), top: B:20:0x0030 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean f(r rVar) {
        r rVar2;
        r rVar3;
        r rVar4 = (r) rVar.f20754d;
        r rVar5 = rVar.h;
        if (rVar5 == null) {
            this.f20767f = rVar4;
        } else {
            rVar5.f20754d = rVar4;
        }
        if (rVar4 != null) {
            rVar4.h = rVar5;
        }
        if (this.f20767f == null) {
            this.f20766e = null;
            return true;
        }
        r rVar6 = this.f20766e;
        if (rVar6 == null || rVar6.f20771g == null || (rVar2 = rVar6.f20770f) == null || rVar2.f20770f == null) {
            return true;
        }
        d();
        try {
            r rVar7 = rVar.f20770f;
            r rVar8 = rVar.f20771g;
            if (rVar7 == null || rVar8 == null) {
                if (rVar7 == null) {
                    if (rVar8 != null) {
                        rVar7 = rVar8;
                    }
                    rVar7 = rVar;
                }
                if (rVar7 != rVar) {
                    r rVar9 = rVar.f20769e;
                    rVar7.f20769e = rVar9;
                    if (rVar9 == null) {
                        rVar6 = rVar7;
                    } else if (rVar == rVar9.f20770f) {
                        rVar9.f20770f = rVar7;
                    } else {
                        rVar9.f20771g = rVar7;
                    }
                    rVar.f20769e = null;
                    rVar.f20771g = null;
                    rVar.f20770f = null;
                }
                if (!rVar.i) {
                    rVar6 = b(rVar6, rVar7);
                }
                this.f20766e = rVar6;
                if (rVar == rVar7 && (rVar3 = rVar.f20769e) != null) {
                    if (rVar != rVar3.f20770f) {
                        rVar3.f20770f = null;
                    } else if (rVar == rVar3.f20771g) {
                        rVar3.f20771g = null;
                    }
                    rVar.f20769e = null;
                }
                this.lockState = 0;
                return false;
            }
            r rVar10 = rVar8;
            while (true) {
                r rVar11 = rVar10.f20770f;
                if (rVar11 == null) {
                    break;
                }
                rVar10 = rVar11;
            }
            boolean z = rVar10.i;
            rVar10.i = rVar.i;
            rVar.i = z;
            r rVar12 = rVar10.f20771g;
            r rVar13 = rVar.f20769e;
            if (rVar10 == rVar8) {
                rVar.f20769e = rVar10;
                rVar10.f20771g = rVar;
            } else {
                r rVar14 = rVar10.f20769e;
                rVar.f20769e = rVar14;
                if (rVar14 != null) {
                    if (rVar10 == rVar14.f20770f) {
                        rVar14.f20770f = rVar;
                    } else {
                        rVar14.f20771g = rVar;
                    }
                }
                rVar10.f20771g = rVar8;
                rVar8.f20769e = rVar10;
            }
            rVar.f20770f = null;
            rVar.f20771g = rVar12;
            if (rVar12 != null) {
                rVar12.f20769e = rVar;
            }
            rVar10.f20770f = rVar7;
            rVar7.f20769e = rVar10;
            rVar10.f20769e = rVar13;
            if (rVar13 == null) {
                rVar6 = rVar10;
            } else if (rVar == rVar13.f20770f) {
                rVar13.f20770f = rVar10;
            } else {
                rVar13.f20771g = rVar10;
            }
            if (rVar12 != null) {
                rVar7 = rVar12;
                if (rVar7 != rVar) {
                }
                if (!rVar.i) {
                }
                this.f20766e = rVar6;
                if (rVar == rVar7) {
                    if (rVar != rVar3.f20770f) {
                    }
                    rVar.f20769e = null;
                }
                this.lockState = 0;
                return false;
            }
            rVar7 = rVar;
            if (rVar7 != rVar) {
            }
            if (!rVar.i) {
            }
            this.f20766e = rVar6;
            if (rVar == rVar7) {
            }
            this.lockState = 0;
            return false;
        } catch (Throwable th) {
            this.lockState = 0;
            throw th;
        }
    }
}
