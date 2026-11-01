package com.bytedance.embedapplog;

import android.content.ContentValues;
import android.database.Cursor;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.ada;
import g.awf;
import g.tn;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class ds implements Cloneable {
    private static final SimpleDateFormat ig = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    /* renamed from: d, reason: collision with root package name */
    public long f713d;
    long dq;
    public String ia;
    public String iw;
    public int kk;
    public String mn;
    String no;
    public int o;
    public long ox;
    public String p;
    public long s;

    public ds() {
        dq(0L);
    }

    public static String d(long j) {
        return ig.format(new Date(j));
    }

    public static ds dq(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return vw.f749d.get(jSONObject.optString("k_cls", "")).clone().d(jSONObject);
        } catch (Throwable th) {
            jo.d(th);
            return null;
        }
    }

    public final ContentValues d(ContentValues contentValues) {
        if (contentValues == null) {
            contentValues = new ContentValues();
        } else {
            contentValues.clear();
        }
        dq(contentValues);
        return contentValues;
    }

    public ds d(JSONObject jSONObject) {
        this.f713d = jSONObject.optLong("local_time_ms", 0L);
        this.dq = 0L;
        this.ox = 0L;
        this.kk = 0;
        this.s = 0L;
        this.p = null;
        this.iw = null;
        this.mn = null;
        this.ia = null;
        return this;
    }

    public abstract JSONObject d();

    public int dq(Cursor cursor) {
        this.dq = cursor.getLong(0);
        this.f713d = cursor.getLong(1);
        this.ox = cursor.getLong(2);
        this.kk = cursor.getInt(3);
        this.s = cursor.getLong(4);
        this.p = cursor.getString(5);
        this.iw = cursor.getString(6);
        this.mn = cursor.getString(7);
        this.ia = cursor.getString(8);
        this.o = cursor.getInt(9);
        return 10;
    }

    public List<String> dq() {
        return Arrays.asList(ada.COLUMN_ID, "integer primary key autoincrement", "local_time_ms", "integer", "tea_event_index", "integer", "nt", "integer", "user_id", "integer", "session_id", "varchar", "user_unique_id", "varchar", "ssid", "varchar", "ab_sdk_version", "varchar", "event_type", "integer");
    }

    public void dq(long j) {
        if (j == 0) {
            j = System.currentTimeMillis();
        }
        this.f713d = j;
    }

    public void dq(ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.f713d));
        contentValues.put("tea_event_index", Long.valueOf(this.ox));
        contentValues.put("nt", Integer.valueOf(this.kk));
        contentValues.put("user_id", Long.valueOf(this.s));
        contentValues.put("session_id", this.p);
        contentValues.put("user_unique_id", this.iw);
        contentValues.put("ssid", this.mn);
        contentValues.put("ab_sdk_version", this.ia);
        contentValues.put("event_type", Integer.valueOf(this.o));
    }

    public void dq(JSONObject jSONObject) {
        jSONObject.put("local_time_ms", this.f713d);
    }

    public String ia() {
        return "sid:" + this.p;
    }

    public final JSONObject iw() {
        try {
            this.no = d(this.f713d);
            return d();
        } catch (JSONException e2) {
            jo.d(e2);
            return null;
        }
    }

    public String kk() {
        return null;
    }

    /* renamed from: mn, reason: merged with bridge method [inline-methods] */
    public ds clone() {
        try {
            return (ds) super.clone();
        } catch (CloneNotSupportedException e2) {
            jo.d(e2);
            return null;
        }
    }

    public final String ox() {
        List<String> dq = dq();
        if (dq == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        sb.append("create table if not exists ");
        sb.append(p());
        sb.append("(");
        for (int i = 0; i < dq.size(); i += 2) {
            sb.append(dq.get(i));
            sb.append(" ");
            sb.append(dq.get(i + 1));
            sb.append(",");
        }
        sb.delete(sb.length() - 1, sb.length());
        sb.append(")");
        return sb.toString();
    }

    public abstract String p();

    public final JSONObject s() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("k_cls", p());
            dq(jSONObject);
            return jSONObject;
        } catch (JSONException e2) {
            jo.d(e2);
            return jSONObject;
        }
    }

    public String toString() {
        String p = p();
        if (!getClass().getSimpleName().equalsIgnoreCase(p)) {
            StringBuilder l = tn.l(p, ", ");
            l.append(getClass().getSimpleName());
            p = l.toString();
        }
        String str = this.p;
        String str2 = "-";
        if (str != null) {
            int indexOf = str.indexOf("-");
            if (indexOf >= 0) {
                str = str.substring(0, indexOf);
            }
            str2 = str;
        }
        StringBuilder p2 = awf.p("{", p, ", ");
        p2.append(ia());
        p2.append(", ");
        p2.append(str2);
        p2.append(", ");
        return tn.f(this.f713d, "}", p2);
    }
}
