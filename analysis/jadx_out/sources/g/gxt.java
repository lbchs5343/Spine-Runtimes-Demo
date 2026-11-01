package g;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class gxt implements etl {

    /* renamed from: a, reason: collision with root package name */
    public int f18972a;

    /* renamed from: b, reason: collision with root package name */
    public int f18973b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f18974c;

    /* renamed from: d, reason: collision with root package name */
    public Object f18975d;

    /* renamed from: f, reason: collision with root package name */
    public int f18976f;

    public gxt(Context context) {
        int i;
        this.f18975d = new Object();
        this.f18974c = context;
        this.f18972a = Math.max(cro.av(context, -1, "access_total_times"), 0);
        this.f18973b = Math.max(context.getSharedPreferences("TrineaAndroidCommon", 0).getInt("access_success_times", -1), 0);
        int av = cro.av(context, -1, "access_sleep_time");
        if (av > 100 && (i = this.f18972a) > 10 && this.f18973b >= i * 0.9f) {
            av /= 2;
        }
        int i2 = av >= 50 ? av : 100;
        this.f18976f = i2;
        cro.az(context, i2, "access_sleep_time");
    }

    public gxt(brr brrVar) {
        this.f18976f = 0;
        this.f18972a = -1;
        this.f18973b = -1;
        this.f18975d = null;
        this.f18974c = brrVar;
    }

    public static String i(ArrayList arrayList, List list) {
        String str = null;
        if (!acw.u(list) && !acw.u(arrayList)) {
            gpu gpuVar = new gpu(6);
            Iterator it = list.iterator();
            double d2 = 0.25d;
            boolean z = false;
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (z) {
                    break;
                }
                if (!TextUtils.isEmpty(str2)) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        String str3 = (String) it2.next();
                        if (!TextUtils.isEmpty(str3)) {
                            if (str3.equals(str2)) {
                                str = str3;
                                d2 = 0.0d;
                                z = true;
                            }
                            if (z) {
                                break;
                            }
                            int max = Math.max(str2.length(), str3.length());
                            double o = max != 0 ? gpuVar.o(str2, str3) / max : 0.0d;
                            if (Double.compare(o, d2) < 0) {
                                str = str3;
                                d2 = o;
                            }
                        }
                    }
                }
            }
            if (byh.bc()) {
                TextUtils.join(",", list);
            }
        }
        return str;
    }

    @Override // g.etl
    public void e(int i, int i2) {
        int i3;
        if (this.f18976f == 1 && i >= (i3 = this.f18972a)) {
            int i4 = this.f18973b;
            if (i <= i3 + i4) {
                this.f18973b = i4 + i2;
                this.f18972a = Math.min(i, i3);
                return;
            }
        }
        j();
        this.f18972a = i;
        this.f18973b = i2;
        this.f18976f = 1;
    }

    @Override // g.etl
    public void g(int i, int i2) {
        int i3;
        if (this.f18976f == 2 && (i3 = this.f18972a) >= i && i3 <= i + i2) {
            this.f18973b += i2;
            this.f18972a = i;
        } else {
            j();
            this.f18972a = i;
            this.f18973b = i2;
            this.f18976f = 2;
        }
    }

    @Override // g.etl
    public void h(int i, int i2, Object obj) {
        int i3;
        int i4;
        int i5;
        if (this.f18976f == 3 && i <= (i4 = this.f18973b + (i3 = this.f18972a)) && (i5 = i + i2) >= i3 && this.f18975d == obj) {
            this.f18972a = Math.min(i, i3);
            this.f18973b = Math.max(i4, i5) - this.f18972a;
            return;
        }
        j();
        this.f18972a = i;
        this.f18973b = i2;
        this.f18975d = obj;
        this.f18976f = 3;
    }

    public void j() {
        etl etlVar = (etl) this.f18974c;
        int i = this.f18976f;
        if (i == 0) {
            return;
        }
        if (i == 1) {
            etlVar.e(this.f18972a, this.f18973b);
        } else if (i == 2) {
            etlVar.g(this.f18972a, this.f18973b);
        } else if (i == 3) {
            etlVar.h(this.f18972a, this.f18973b, this.f18975d);
        }
        this.f18975d = null;
        this.f18976f = 0;
    }

    public void k(boolean z) {
        Context context = (Context) this.f18974c;
        if (z) {
            int i = this.f18973b + 1;
            this.f18973b = i;
            cro.az(context, i, "access_success_times");
        }
        int i2 = this.f18972a + 1;
        this.f18972a = i2;
        cro.az(context, i2, "access_total_times");
    }
}
