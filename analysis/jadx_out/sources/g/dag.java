package g;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.BufferedWriter;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class dag implements dmp, abx {

    /* renamed from: c, reason: collision with root package name */
    public final Map f13848c;

    /* renamed from: d, reason: collision with root package name */
    public final xx f13849d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f13850e = true;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f13851f;

    /* renamed from: g, reason: collision with root package name */
    public final JsonWriter f13852g;
    public final Map h;

    public dag(BufferedWriter bufferedWriter, HashMap hashMap, HashMap hashMap2, ehz ehzVar, boolean z) {
        this.f13852g = new JsonWriter(bufferedWriter);
        this.h = hashMap;
        this.f13848c = hashMap2;
        this.f13849d = ehzVar;
        this.f13851f = z;
    }

    @Override // g.abx
    public final abx a(String str) {
        m();
        this.f13852g.value(str);
        return this;
    }

    @Override // g.abx
    public final abx b(boolean z) {
        m();
        this.f13852g.value(z);
        return this;
    }

    @Override // g.dmp
    public final dmp i(cec cecVar, Object obj) {
        k(obj, cecVar.f12727a);
        return this;
    }

    public final dag j(Object obj) {
        JsonWriter jsonWriter = this.f13852g;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        int i = 0;
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    j(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        k(entry.getValue(), (String) key);
                    } catch (ClassCastException e2) {
                        throw new fgn(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e2);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            xx xxVar = (xx) this.h.get(obj.getClass());
            if (xxVar != null) {
                jsonWriter.beginObject();
                xxVar.b(obj, this);
                jsonWriter.endObject();
                return this;
            }
            ya yaVar = (ya) this.f13848c.get(obj.getClass());
            if (yaVar != null) {
                yaVar.b(obj, this);
                return this;
            }
            if (obj instanceof Enum) {
                String name = ((Enum) obj).name();
                m();
                jsonWriter.value(name);
                return this;
            }
            jsonWriter.beginObject();
            this.f13849d.b(obj, this);
            jsonWriter.endObject();
            return this;
        }
        if (obj instanceof byte[]) {
            m();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i < length) {
                jsonWriter.value(r7[i]);
                i++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                m();
                jsonWriter.value(j);
                i++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i < length3) {
                jsonWriter.value(dArr[i]);
                i++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i < length4) {
                jsonWriter.value(zArr[i]);
                i++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i < length5) {
                j(numberArr[i]);
                i++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i < length6) {
                j(objArr[i]);
                i++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    public final dag k(Object obj, String str) {
        boolean z = this.f13851f;
        JsonWriter jsonWriter = this.f13852g;
        if (z) {
            if (obj == null) {
                return this;
            }
            m();
            jsonWriter.name(str);
            j(obj);
            return this;
        }
        m();
        jsonWriter.name(str);
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        j(obj);
        return this;
    }

    @Override // g.dmp
    public final dmp l(cec cecVar, long j) {
        String str = cecVar.f12727a;
        m();
        JsonWriter jsonWriter = this.f13852g;
        jsonWriter.name(str);
        m();
        jsonWriter.value(j);
        return this;
    }

    public final void m() {
        if (!this.f13850e) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }
}
