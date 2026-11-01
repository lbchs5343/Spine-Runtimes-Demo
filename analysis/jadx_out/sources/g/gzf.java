package g;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class gzf {

    /* renamed from: a, reason: collision with root package name */
    public static final Class[] f19043a = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f19044b;

    /* renamed from: c, reason: collision with root package name */
    public final fet f19045c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f19046d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f19047e;

    /* renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f19048f;

    public gzf() {
        this.f19046d = new LinkedHashMap();
        this.f19047e = new LinkedHashMap();
        this.f19048f = new LinkedHashMap();
        this.f19044b = new LinkedHashMap();
        this.f19045c = new dco(2, this);
    }

    public gzf(HashMap hashMap) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f19046d = linkedHashMap;
        this.f19047e = new LinkedHashMap();
        this.f19048f = new LinkedHashMap();
        this.f19044b = new LinkedHashMap();
        this.f19045c = new dco(2, this);
        linkedHashMap.putAll(hashMap);
    }

    public static Bundle g(gzf gzfVar) {
        String str;
        LinkedHashMap linkedHashMap = gzfVar.f19046d;
        LinkedHashMap linkedHashMap2 = gzfVar.f19047e;
        bff.p(linkedHashMap2, "<this>");
        int size = linkedHashMap2.size();
        Iterator it = (size != 0 ? size != 1 ? new LinkedHashMap(linkedHashMap2) : fhj.au(linkedHashMap2) : dyq.f15095a).entrySet().iterator();
        do {
            int i = 0;
            if (!it.hasNext()) {
                Set<String> keySet = linkedHashMap.keySet();
                ArrayList arrayList = new ArrayList(keySet.size());
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                for (String str2 : keySet) {
                    arrayList.add(str2);
                    arrayList2.add(linkedHashMap.get(str2));
                }
                ger[] gerVarArr = {new ger("keys", arrayList), new ger("values", arrayList2)};
                Bundle bundle = new Bundle(2);
                while (i < 2) {
                    ger gerVar = gerVarArr[i];
                    String str3 = (String) gerVar.b();
                    Object c2 = gerVar.c();
                    if (c2 == null) {
                        bundle.putString(str3, null);
                    } else if (c2 instanceof Boolean) {
                        bundle.putBoolean(str3, ((Boolean) c2).booleanValue());
                    } else if (c2 instanceof Byte) {
                        bundle.putByte(str3, ((Number) c2).byteValue());
                    } else if (c2 instanceof Character) {
                        bundle.putChar(str3, ((Character) c2).charValue());
                    } else if (c2 instanceof Double) {
                        bundle.putDouble(str3, ((Number) c2).doubleValue());
                    } else if (c2 instanceof Float) {
                        bundle.putFloat(str3, ((Number) c2).floatValue());
                    } else if (c2 instanceof Integer) {
                        bundle.putInt(str3, ((Number) c2).intValue());
                    } else if (c2 instanceof Long) {
                        bundle.putLong(str3, ((Number) c2).longValue());
                    } else if (c2 instanceof Short) {
                        bundle.putShort(str3, ((Number) c2).shortValue());
                    } else if (c2 instanceof Bundle) {
                        bundle.putBundle(str3, (Bundle) c2);
                    } else if (c2 instanceof CharSequence) {
                        bundle.putCharSequence(str3, (CharSequence) c2);
                    } else if (c2 instanceof Parcelable) {
                        bundle.putParcelable(str3, (Parcelable) c2);
                    } else if (c2 instanceof boolean[]) {
                        bundle.putBooleanArray(str3, (boolean[]) c2);
                    } else if (c2 instanceof byte[]) {
                        bundle.putByteArray(str3, (byte[]) c2);
                    } else if (c2 instanceof char[]) {
                        bundle.putCharArray(str3, (char[]) c2);
                    } else if (c2 instanceof double[]) {
                        bundle.putDoubleArray(str3, (double[]) c2);
                    } else if (c2 instanceof float[]) {
                        bundle.putFloatArray(str3, (float[]) c2);
                    } else if (c2 instanceof int[]) {
                        bundle.putIntArray(str3, (int[]) c2);
                    } else if (c2 instanceof long[]) {
                        bundle.putLongArray(str3, (long[]) c2);
                    } else if (c2 instanceof short[]) {
                        bundle.putShortArray(str3, (short[]) c2);
                    } else if (c2 instanceof Object[]) {
                        Class<?> componentType = c2.getClass().getComponentType();
                        bff.d(componentType);
                        if (Parcelable.class.isAssignableFrom(componentType)) {
                            bundle.putParcelableArray(str3, (Parcelable[]) c2);
                        } else if (String.class.isAssignableFrom(componentType)) {
                            bundle.putStringArray(str3, (String[]) c2);
                        } else if (CharSequence.class.isAssignableFrom(componentType)) {
                            bundle.putCharSequenceArray(str3, (CharSequence[]) c2);
                        } else {
                            if (!Serializable.class.isAssignableFrom(componentType)) {
                                throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + str3 + '\"');
                            }
                            bundle.putSerializable(str3, (Serializable) c2);
                        }
                    } else if (c2 instanceof Serializable) {
                        bundle.putSerializable(str3, (Serializable) c2);
                    } else if (c2 instanceof IBinder) {
                        bundle.putBinder(str3, (IBinder) c2);
                    } else if (c2 instanceof Size) {
                        bundle.putSize(str3, (Size) c2);
                    } else {
                        if (!(c2 instanceof SizeF)) {
                            throw new IllegalArgumentException("Illegal value type " + c2.getClass().getCanonicalName() + " for key \"" + str3 + '\"');
                        }
                        bundle.putSizeF(str3, (SizeF) c2);
                    }
                    i++;
                }
                return bundle;
            }
            Map.Entry entry = (Map.Entry) it.next();
            str = (String) entry.getKey();
            Bundle b2 = ((fet) entry.getValue()).b();
            bff.p(str, "key");
            if (b2 != null) {
                while (i < 29) {
                    Class cls = f19043a[i];
                    bff.d(cls);
                    if (!cls.isInstance(b2)) {
                        i++;
                    }
                }
                throw new IllegalArgumentException("Can't put value with type " + b2.getClass() + " into saved state");
            }
            Object obj = gzfVar.f19048f.get(str);
            cet cetVar = obj instanceof cet ? (cet) obj : null;
            if (cetVar != null) {
                cetVar.q(b2);
            } else {
                linkedHashMap.put(str, b2);
            }
        } while (gzfVar.f19044b.get(str) == null);
        throw new ClassCastException();
    }
}
