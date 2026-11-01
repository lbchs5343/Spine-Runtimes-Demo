package g;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.BufferedReader;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class gdf {

    /* renamed from: a, reason: collision with root package name */
    public final long f17929a;

    public gdf(long j) {
        this.f17929a = j;
    }

    public static gdf b(BufferedReader bufferedReader) {
        JsonReader jsonReader = new JsonReader(bufferedReader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? new gdf(Long.parseLong(jsonReader.nextString())) : new gdf(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof gdf) && this.f17929a == ((gdf) obj).f17929a;
    }

    public final int hashCode() {
        long j = this.f17929a;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public final String toString() {
        return tn.f(this.f17929a, "}", new StringBuilder("LogResponse{nextRequestWaitMillis="));
    }
}
