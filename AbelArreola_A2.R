mat <- matrix(c(230, 100, 3589,3, 5, 160), nrow=2, byrow=TRUE)

cat("Matriz inicial\n")
print(mat)

cat("Operacion\n")
mat[1, ] <- mat[1, ] / mat[1,1]
print(mat)

factor <- mat[2,1]
mat[2, ] <- mat[2, ] - factor * mat[1, ]
print(mat)

mat[2, ] <- mat[2, ] / mat[2,2]
print(mat)

factor <- mat[1,2]
mat[1, ] <- mat[1, ] - factor * mat[2, ]
print(mat)

soluciones <- mat[,3]
names(soluciones) <- c("x", "y")

cat("\nSoluciones\n")
print(soluciones)

horas_novatos <- soluciones["y"] * 100 
costo_unitario_novatos <- 400         

horas_expertos <- soluciones["x"] * 60
costo_unitario_expertos <- 900

costo_novatos <- horas_novatos * costo_unitario_novatos
costo_expertos <- horas_expertos * costo_unitario_expertos

costo_total_mano_obra <- costo_novatos + costo_expertos

cat("\nCosto Novatos: $", round(costo_novatos,2), "\n")
cat("Costo Expertos: $", round(costo_expertos,2), "\n")
cat("Costo total mano de obra: $", round(costo_total_mano_obra,2), "\n")
