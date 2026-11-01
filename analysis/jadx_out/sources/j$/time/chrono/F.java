package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* loaded from: classes2.dex */
public final class F implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;

    /* renamed from: a, reason: collision with root package name */
    public byte f20463a;

    /* renamed from: b, reason: collision with root package name */
    public Object f20464b;

    public F() {
    }

    public F(byte b2, Object obj) {
        this.f20463a = b2;
        this.f20464b = obj;
    }

    private Object readResolve() {
        return this.f20464b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object R;
        byte readByte = objectInput.readByte();
        this.f20463a = readByte;
        switch (readByte) {
            case 1:
                ConcurrentHashMap concurrentHashMap = AbstractC0260a.f20470a;
                R = j$.com.android.tools.r8.a.R(objectInput.readUTF());
                break;
            case 2:
                R = ((InterfaceC0261b) objectInput.readObject()).y((j$.time.i) objectInput.readObject());
                break;
            case 3:
                R = ((InterfaceC0264e) objectInput.readObject()).m((ZoneOffset) objectInput.readObject()).r((ZoneId) objectInput.readObject());
                break;
            case 4:
                LocalDate localDate = y.f20503d;
                int readInt = objectInput.readInt();
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                w.f20501c.getClass();
                R = new y(LocalDate.L(readInt, readByte2, readByte3));
                break;
            case 5:
                z zVar = z.f20507d;
                R = z.q(objectInput.readByte());
                break;
            case 6:
                p pVar = (p) objectInput.readObject();
                int readInt2 = objectInput.readInt();
                byte readByte4 = objectInput.readByte();
                byte readByte5 = objectInput.readByte();
                pVar.getClass();
                R = new r(pVar, readInt2, readByte4, readByte5);
                break;
            case 7:
                int readInt3 = objectInput.readInt();
                byte readByte6 = objectInput.readByte();
                byte readByte7 = objectInput.readByte();
                B.f20459c.getClass();
                R = new D(LocalDate.L(readInt3 + 1911, readByte6, readByte7));
                break;
            case 8:
                int readInt4 = objectInput.readInt();
                byte readByte8 = objectInput.readByte();
                byte readByte9 = objectInput.readByte();
                H.f20466c.getClass();
                R = new J(LocalDate.L(readInt4 - 543, readByte8, readByte9));
                break;
            case 9:
                int i = C0267h.f20476e;
                R = new C0267h(j$.com.android.tools.r8.a.R(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.f20464b = R;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b2 = this.f20463a;
        Object obj = this.f20464b;
        objectOutput.writeByte(b2);
        switch (b2) {
            case 1:
                objectOutput.writeUTF(((AbstractC0260a) obj).h());
                return;
            case 2:
                C0266g c0266g = (C0266g) obj;
                objectOutput.writeObject(c0266g.f20474a);
                objectOutput.writeObject(c0266g.f20475b);
                return;
            case 3:
                l lVar = (l) obj;
                objectOutput.writeObject(lVar.f20483a);
                objectOutput.writeObject(lVar.f20484b);
                objectOutput.writeObject(lVar.f20485c);
                return;
            case 4:
                y yVar = (y) obj;
                yVar.getClass();
                objectOutput.writeInt(j$.time.temporal.r.a(yVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.r.a(yVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.r.a(yVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((z) obj).f20509a);
                return;
            case 6:
                r rVar = (r) obj;
                objectOutput.writeObject(rVar.f20493a);
                objectOutput.writeInt(j$.time.temporal.r.a(rVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.r.a(rVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.r.a(rVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 7:
                D d2 = (D) obj;
                d2.getClass();
                objectOutput.writeInt(j$.time.temporal.r.a(d2, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.r.a(d2, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.r.a(d2, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 8:
                J j = (J) obj;
                j.getClass();
                objectOutput.writeInt(j$.time.temporal.r.a(j, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.r.a(j, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.r.a(j, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 9:
                C0267h c0267h = (C0267h) obj;
                objectOutput.writeUTF(c0267h.f20477a.h());
                objectOutput.writeInt(c0267h.f20478b);
                objectOutput.writeInt(c0267h.f20479c);
                objectOutput.writeInt(c0267h.f20480d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }
}
