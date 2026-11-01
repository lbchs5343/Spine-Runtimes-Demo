package g;

import a.u.e.NoItemAdapterException;
import a.u.e.NoViewTypeException;
import a.u.e.NullItemDataException;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class dbv extends ect {

    /* renamed from: a, reason: collision with root package name */
    public final LayoutInflater f13941a;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f13944d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f13945e = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public int f13942b = 0;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f13943c = new ArrayList();

    public dbv(Context context, ArrayList arrayList) {
        this.f13941a = LayoutInflater.from(context);
        if (acw.u(arrayList)) {
            return;
        }
        this.f13943c.addAll(arrayList);
    }

    public final cng f(int i) {
        return (cng) this.f13943c.get(i);
    }

    public final void g(Class cls, ekf ekfVar) {
        this.f13944d.put(cls, ekfVar);
        HashMap hashMap = this.f13945e;
        if (hashMap.containsKey(cls)) {
            return;
        }
        int i = this.f13942b;
        this.f13942b = i + 1;
        hashMap.put(cls, Integer.valueOf(i));
    }

    @Override // androidx.recyclerview.widget.m
    public final int getItemCount() {
        return acw.bo(this.f13943c);
    }

    @Override // androidx.recyclerview.widget.m
    public final int getItemViewType(int i) {
        cng f2 = f(i);
        if (f2 == null) {
            throw new NullItemDataException();
        }
        Integer num = (Integer) this.f13945e.get(f2.getClass());
        if (num != null) {
            return num.intValue();
        }
        throw new NoViewTypeException(f2.getClass().toString());
    }

    public final void h(ArrayList arrayList) {
        this.f13943c = new ArrayList();
        if (acw.u(arrayList)) {
            return;
        }
        this.f13943c.addAll(arrayList);
    }

    @Override // g.ect, androidx.recyclerview.widget.m
    public final void onBindViewHolder(androidx.recyclerview.widget.p pVar, int i) {
        super.onBindViewHolder(pVar, i);
        cng f2 = f(i);
        if (f2 == null) {
            throw new NullItemDataException();
        }
        ekf ekfVar = (ekf) this.f13944d.get(f2.getClass());
        if (ekfVar == null) {
            throw new NoItemAdapterException();
        }
        ekfVar.b(pVar, f2);
    }

    @Override // androidx.recyclerview.widget.m
    public final androidx.recyclerview.widget.p onCreateViewHolder(ViewGroup viewGroup, int i) {
        for (Map.Entry entry : this.f13945e.entrySet()) {
            if (entry != null && i == ((Integer) entry.getValue()).intValue()) {
                ekf ekfVar = (ekf) this.f13944d.get((Class) entry.getKey());
                if (ekfVar != null) {
                    return ekfVar.a(this.f13941a, viewGroup);
                }
                throw new NoItemAdapterException();
            }
        }
        throw new NoViewTypeException();
    }
}
