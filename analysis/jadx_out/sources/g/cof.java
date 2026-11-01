package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Serializable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class cof extends ex implements Map, Cloneable, Serializable, InvocationHandler {
    private final Map<String, Object> map;

    public cof() {
        this(false);
    }

    public cof(Map map) {
        this.map = map;
    }

    public cof(boolean z) {
        if (z) {
            this.map = new LinkedHashMap(16);
        } else {
            this.map = new HashMap(16);
        }
    }

    @Override // java.util.Map
    public final void clear() {
        this.map.clear();
    }

    public final Object clone() {
        return new cof(new LinkedHashMap(this.map));
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return this.map.entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return this.map.equals(obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.map.get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.map.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        int length = parameterTypes.length;
        Class<?> cls = Void.TYPE;
        String str = null;
        if (length == 1) {
            if (method.getName().equals("equals")) {
                return Boolean.valueOf(this.map.equals(objArr[0]));
            }
            if (method.getReturnType() != cls) {
                throw new bfj("illegal setter");
            }
            btq btqVar = (btq) method.getAnnotation(btq.class);
            String name = (btqVar == null || btqVar.name().length() == 0) ? null : btqVar.name();
            if (name == null) {
                String name2 = method.getName();
                if (!name2.startsWith("set")) {
                    throw new bfj("illegal setter");
                }
                String substring = name2.substring(3);
                if (substring.length() == 0) {
                    throw new bfj("illegal setter");
                }
                name = Character.toLowerCase(substring.charAt(0)) + substring.substring(1);
            }
            this.map.put(name, objArr[0]);
            return null;
        }
        if (parameterTypes.length != 0) {
            throw new UnsupportedOperationException(method.toGenericString());
        }
        if (method.getReturnType() == cls) {
            throw new bfj("illegal getter");
        }
        btq btqVar2 = (btq) method.getAnnotation(btq.class);
        if (btqVar2 != null && btqVar2.name().length() != 0) {
            str = btqVar2.name();
        }
        if (str == null) {
            String name3 = method.getName();
            if (name3.startsWith("get")) {
                String substring2 = name3.substring(3);
                if (substring2.length() == 0) {
                    throw new bfj("illegal getter");
                }
                str = Character.toLowerCase(substring2.charAt(0)) + substring2.substring(1);
            } else {
                if (!name3.startsWith("is")) {
                    if (name3.startsWith(TTDownloadField.TT_HASHCODE)) {
                        return Integer.valueOf(this.map.hashCode());
                    }
                    if (name3.startsWith("toString")) {
                        return j();
                    }
                    throw new bfj("illegal getter");
                }
                String substring3 = name3.substring(2);
                if (substring3.length() == 0) {
                    throw new bfj("illegal getter");
                }
                str = Character.toLowerCase(substring3.charAt(0)) + substring3.substring(1);
            }
        }
        return dtu.s(this.map.get(str), method.getGenericReturnType(), mh.f19642a);
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.map.isEmpty();
    }

    public final Map k() {
        return this.map;
    }

    @Override // java.util.Map
    public final Set keySet() {
        return this.map.keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return this.map.put((String) obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        this.map.putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return this.map.remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        return this.map.size();
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.map.values();
    }
}
