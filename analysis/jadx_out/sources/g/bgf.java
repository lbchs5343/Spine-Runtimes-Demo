package g;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzcaj;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class bgf implements byr, eqn, dan, gan {
    public final /* synthetic */ int y;
    public Object z;

    public bgf(int i) {
        this.y = i;
        switch (i) {
            case 3:
                this.z = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
                break;
            case 7:
                this.z = new dyn(22, this);
                break;
            default:
                this.z = new ArrayDeque();
                break;
        }
    }

    public /* synthetic */ bgf(int i, Object obj) {
        this.y = i;
        this.z = obj;
    }

    public /* synthetic */ bgf(int i, boolean z) {
        this.y = i;
    }

    public bgf(View view) {
        this.y = 8;
        this.z = new WeakReference(view);
    }

    public bgf(cyg cygVar) {
        this.y = 9;
        ckd.k(cygVar);
        this.z = cygVar;
    }

    @Override // g.byr
    public void _ar(hed hedVar, cfm cfmVar) {
        ((ArrayDeque) this.z).pop();
    }

    @Override // g.byr
    public boolean _cs(hed hedVar, cfm cfmVar) {
        ((ArrayDeque) this.z).push(cfmVar);
        return true;
    }

    public void _e() {
        fth fthVar = ((cyg) this.z).j;
        cyg.ak(fthVar);
        fthVar._e();
    }

    public abstract void _t(Object obj, Type type, Map map, ccw ccwVar);

    public long aa(long j) {
        ((cxf) this.z).f13683a.position((int) (r0.position() + j));
        return j;
    }

    public void ab() {
    }

    public InputStream ac() {
        af();
        cxf cxfVar = (cxf) this.z;
        cxfVar.getClass();
        return new ByteArrayInputStream(cxfVar.f13683a.array());
    }

    public abstract void ad(hed hedVar, cih cihVar, cfm cfmVar);

    public void ae() {
    }

    public void af() {
        ((cxf) this.z).f13683a.position(0);
    }

    public void ag(Object obj, Object obj2) {
        bnu bnuVar = (bnu) this.z;
        if (obj2 == null && bnuVar.f11884b.isPrimitive()) {
            return;
        }
        Field field = bnuVar.f11886d;
        Method method = bnuVar.k;
        try {
            if (bnuVar.f11889g) {
                if (!bnuVar.j) {
                    field.set(obj, obj2);
                    return;
                }
                if (Map.class.isAssignableFrom(bnuVar.f11884b)) {
                    Map map = (Map) field.get(obj);
                    if (map != null) {
                        map.putAll((Map) obj2);
                        return;
                    }
                    return;
                }
                Collection collection = (Collection) field.get(obj);
                if (collection != null) {
                    collection.addAll((Collection) obj2);
                    return;
                }
                return;
            }
            if (!bnuVar.j) {
                method.invoke(obj, obj2);
                return;
            }
            if (Map.class.isAssignableFrom(bnuVar.f11884b)) {
                Map map2 = (Map) method.invoke(obj, null);
                if (map2 != null) {
                    map2.putAll((Map) obj2);
                    return;
                }
                return;
            }
            Collection collection2 = (Collection) method.invoke(obj, null);
            if (collection2 != null) {
                collection2.addAll((Collection) obj2);
            }
        } catch (Exception e2) {
            throw new bfj("set property error, " + bnuVar.i, (Throwable) e2);
        }
    }

    public abstract String ah();

    public void ai() {
    }

    public abstract void aj(duw duwVar);

    public int ak(byte[] bArr, int i, int i2) {
        ((cxf) this.z).f13683a.get(bArr, i, i2);
        return i2;
    }

    @Override // g.byr
    public void bq(hed hedVar, cih cihVar) {
        ad(hedVar, cihVar, (cfm) ((ArrayDeque) this.z).peek());
    }

    @Override // g.eqn
    public boolean d() {
        List list = (List) this.z;
        return list.isEmpty() || (list.size() == 1 && ((flj) list.get(0)).v());
    }

    @Override // g.eqn
    public List ox() {
        return (List) this.z;
    }

    public String toString() {
        switch (this.y) {
            case 4:
                StringBuilder sb = new StringBuilder();
                List list = (List) this.z;
                if (!list.isEmpty()) {
                    sb.append("values=");
                    sb.append(Arrays.toString(list.toArray()));
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public abstract void zza();

    @Override // g.gan
    public Context zzau() {
        throw null;
    }

    @Override // g.gan
    public cvb zzav() {
        throw null;
    }

    @Override // g.gan
    public fbc zzaw() {
        throw null;
    }

    @Override // g.gan
    public bgm zzay() {
        throw null;
    }

    @Override // g.gan
    public fth zzaz() {
        throw null;
    }

    public dcy zzb() {
        return zzcaj.zza.zza((dyn) this.z);
    }
}
