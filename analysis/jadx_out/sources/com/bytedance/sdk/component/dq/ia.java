package com.bytedance.sdk.component.dq;

import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
class ia {
    private ig dq;

    private ia(ig igVar) {
        this.dq = igVar;
    }

    public static ia dq(ig igVar) {
        return new ia(igVar);
    }

    private static void dq(String str) {
        if (str.startsWith("{") && str.endsWith("}")) {
            return;
        }
        kk.dq(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n ".concat(str)));
    }

    public <T> T dq(String str, Type type) throws JSONException {
        dq(str);
        return (type.equals(JSONObject.class) || ((type instanceof Class) && JSONObject.class.isAssignableFrom((Class) type))) ? (T) new JSONObject(str) : (T) this.dq.dq(str, type);
    }

    public <T> String dq(T t) {
        if (t == null) {
            return "{}";
        }
        String obj = ((t instanceof JSONObject) || (t instanceof JSONArray)) ? t.toString() : this.dq.dq(t);
        dq(obj);
        return obj;
    }
}
