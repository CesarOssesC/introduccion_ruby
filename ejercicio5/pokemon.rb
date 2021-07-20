class Pokemon
    attr_accessor :hp
    attr_accessor :ataque
    attr_accessor :nombre

    def atacar (enemigo)
        enemigo.hp -= self.ataque
    end

    def hp_resultante
        return "#{@nombre} y lo dejó con #{@hp} HP"
    end

    def datos
        return "#{@nombre}: (#{@ataque} ATK / #{@hp} HP)"
    end
end

