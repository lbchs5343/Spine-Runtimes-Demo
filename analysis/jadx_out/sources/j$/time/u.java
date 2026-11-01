package j$.time;

import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class u extends ZoneId {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f20631d = 0;
    private static final long serialVersionUID = 8386373296231747096L;

    /* renamed from: b, reason: collision with root package name */
    public final String f20632b;

    /* renamed from: c, reason: collision with root package name */
    public final transient j$.time.zone.f f20633c;

    public u(String str, j$.time.zone.f fVar) {
        this.f20632b = str;
        this.f20633c = fVar;
    }

    public static u H(String str, boolean z) {
        j$.time.zone.f fVar;
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        if (length < 2) {
            throw new a("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt != '/' || i == 0) && ((charAt < '0' || charAt > '9' || i == 0) && ((charAt != '~' || i == 0) && ((charAt != '.' || i == 0) && ((charAt != '_' || i == 0) && ((charAt != '+' || i == 0) && (charAt != '-' || i == 0))))))))) {
                throw new a("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
            }
        }
        try {
            fVar = j$.time.zone.i.a(str);
        } catch (j$.time.zone.g e2) {
            if (z) {
                throw e2;
            }
            fVar = null;
        }
        return new u(str, fVar);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 7, this);
    }

    @Override // j$.time.ZoneId
    public final j$.time.zone.f C() {
        j$.time.zone.f fVar = this.f20633c;
        return fVar != null ? fVar : j$.time.zone.i.a(this.f20632b);
    }

    @Override // j$.time.ZoneId
    public final void G(DataOutput dataOutput) {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.f20632b);
    }

    @Override // j$.time.ZoneId
    public final String h() {
        return this.f20632b;
    }
}
