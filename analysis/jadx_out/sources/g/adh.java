package g;

import android.content.Context;
import java.io.File;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
public final class adh {

    /* renamed from: a, reason: collision with root package name */
    public volatile ezv f10036a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f10037b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10038c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f10039d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10040e;

    /* renamed from: f, reason: collision with root package name */
    public fm f10041f;

    /* renamed from: g, reason: collision with root package name */
    public final Executor f10042g;
    public final /* synthetic */ ero h;
    public final /* synthetic */ File i;
    public boolean j;
    public final /* synthetic */ int k;
    public boolean l;
    public volatile ezv m;

    public adh(ero eroVar, Context context, File file, int i, boolean z, boolean z2) {
        this.h = eroVar;
        this.i = file;
        this.k = i;
        this.f10037b = z;
        this.f10039d = z2;
        ThreadPoolExecutor threadPoolExecutor = ezv.f16425a;
        this.j = false;
        this.l = false;
        this.f10038c = true;
        this.f10040e = false;
        context.getApplicationContext();
        this.f10042g = threadPoolExecutor;
    }

    public final void n() {
        if (this.m != null) {
            if (!this.j) {
                this.f10040e = true;
            }
            if (this.f10036a != null) {
                this.m.getClass();
                this.m = null;
                return;
            }
            this.m.getClass();
            ezv ezvVar = this.m;
            ezvVar.f16430f.set(true);
            if (ezvVar.i.cancel(false)) {
                this.f10036a = this.m;
            }
            this.m = null;
        }
    }

    public final void o() {
        if (this.f10036a != null || this.m == null) {
            return;
        }
        this.m.getClass();
        ezv ezvVar = this.m;
        Executor executor = this.f10042g;
        if (ezvVar.f16429e == egx.PENDING) {
            ezvVar.f16429e = egx.RUNNING;
            ezvVar.h.getClass();
            executor.execute(ezvVar.i);
        } else {
            int i = ftp.f17397a[ezvVar.f16429e.ordinal()];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
            throw new IllegalStateException("We should never reach this state");
        }
    }

    public final atp p() {
        int i;
        int i2;
        int i3;
        File[] listFiles = this.i.listFiles();
        ero eroVar = this.h;
        int i4 = this.k;
        boolean z = this.f10037b;
        int i5 = 0;
        int length = listFiles == null ? 0 : listFiles.length;
        eroVar.getClass();
        dtd dtdVar = new dtd(new bze(eroVar), new epx(i4, z));
        atp atpVar = new atp();
        atpVar.f10817d = (Object[]) Array.newInstance((Class<?>) File.class, length);
        atpVar.f10818e = dtdVar;
        atpVar.f10814a = 0;
        atpVar.f10819f = listFiles == null ? -1 : listFiles.length;
        ArrayList arrayList = new ArrayList();
        if (listFiles != null) {
            int length2 = listFiles.length;
            while (i2 < length2) {
                File file = listFiles[i2];
                if (this.f10036a != null) {
                    break;
                }
                if (file.isHidden()) {
                    atpVar.h++;
                    i2 = this.f10039d ? 0 : i2 + 1;
                }
                eih eihVar = new eih(file);
                ero eroVar2 = this.h;
                eroVar2.getClass();
                if (eihVar.directory || (i3 = eroVar2.k) == 0 || i3 == 2 || (i3 == 3 && eroVar2.h)) {
                    arrayList.add(eihVar);
                }
            }
        }
        Object[] array = arrayList.toArray((Object[]) Array.newInstance((Class<?>) File.class, arrayList.size()));
        if (atpVar.f10820g != null) {
            throw new IllegalStateException("Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll.");
        }
        if (array.length != 0 && array.length >= 1) {
            if (array.length == 0) {
                i = 0;
            } else {
                Arrays.sort(array, atpVar.f10818e);
                i = 1;
                int i6 = 0;
                for (int i7 = 1; i7 < array.length; i7++) {
                    Object obj = array[i7];
                    if (atpVar.f10818e.compare(array[i6], obj) == 0) {
                        int i8 = i6;
                        while (true) {
                            if (i8 >= i) {
                                i8 = -1;
                                break;
                            }
                            if (atpVar.f10818e.d(array[i8], obj)) {
                                break;
                            }
                            i8++;
                        }
                        if (i8 != -1) {
                            array[i8] = obj;
                        } else {
                            if (i != i7) {
                                array[i] = obj;
                            }
                            i++;
                        }
                    } else {
                        if (i != i7) {
                            array[i] = obj;
                        }
                        i6 = i;
                        i++;
                    }
                }
            }
            if (atpVar.f10814a == 0) {
                atpVar.f10817d = array;
                atpVar.f10814a = i;
                atpVar.f10818e.e(0, i);
                return atpVar;
            }
            brr brrVar = atpVar.f10818e;
            boolean z2 = brrVar instanceof bdl;
            if (!z2) {
                if (atpVar.f10820g != null) {
                    throw new IllegalStateException("Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll.");
                }
                if (!z2) {
                    if (atpVar.j == null) {
                        atpVar.j = new bdl(brrVar);
                    }
                    atpVar.f10818e = atpVar.j;
                }
            }
            atpVar.f10820g = atpVar.f10817d;
            atpVar.i = 0;
            int i9 = atpVar.f10814a;
            atpVar.f10815b = i9;
            atpVar.f10817d = (Object[]) Array.newInstance((Class<?>) File.class, i9 + i + 10);
            atpVar.f10816c = 0;
            while (true) {
                int i10 = atpVar.i;
                int i11 = atpVar.f10815b;
                if (i10 >= i11 && i5 >= i) {
                    break;
                }
                if (i10 == i11) {
                    int i12 = i - i5;
                    System.arraycopy(array, i5, atpVar.f10817d, atpVar.f10816c, i12);
                    int i13 = atpVar.f10816c + i12;
                    atpVar.f10816c = i13;
                    atpVar.f10814a += i12;
                    atpVar.f10818e.e(i13 - i12, i12);
                    break;
                }
                if (i5 == i) {
                    int i14 = i11 - i10;
                    System.arraycopy(atpVar.f10820g, i10, atpVar.f10817d, atpVar.f10816c, i14);
                    atpVar.f10816c += i14;
                    break;
                }
                Object obj2 = atpVar.f10820g[i10];
                Object obj3 = array[i5];
                int compare = atpVar.f10818e.compare(obj2, obj3);
                if (compare > 0) {
                    Object[] objArr = atpVar.f10817d;
                    int i15 = atpVar.f10816c;
                    atpVar.f10816c = i15 + 1;
                    objArr[i15] = obj3;
                    atpVar.f10814a++;
                    i5++;
                    atpVar.f10818e.e(i15, 1);
                } else if (compare == 0 && atpVar.f10818e.d(obj2, obj3)) {
                    Object[] objArr2 = atpVar.f10817d;
                    int i16 = atpVar.f10816c;
                    atpVar.f10816c = i16 + 1;
                    objArr2[i16] = obj3;
                    i5++;
                    atpVar.i++;
                    if (!atpVar.f10818e.c(obj2, obj3)) {
                        brr brrVar2 = atpVar.f10818e;
                        brrVar2.h(atpVar.f10816c - 1, 1, brrVar2.f(obj2, obj3));
                    }
                } else {
                    Object[] objArr3 = atpVar.f10817d;
                    int i17 = atpVar.f10816c;
                    atpVar.f10816c = i17 + 1;
                    objArr3[i17] = obj2;
                    atpVar.i++;
                }
            }
            atpVar.f10820g = null;
            if (!z2) {
                brr brrVar3 = atpVar.f10818e;
                if (brrVar3 instanceof bdl) {
                    ((bdl) brrVar3).f11326b.j();
                }
                brr brrVar4 = atpVar.f10818e;
                bdl bdlVar = atpVar.j;
                if (brrVar4 == bdlVar) {
                    atpVar.f10818e = bdlVar.f11325a;
                }
            }
        }
        return atpVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        erl.au(this, sb);
        sb.append(" id=");
        sb.append(0);
        sb.append("}");
        return sb.toString();
    }
}
