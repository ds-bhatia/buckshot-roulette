extends Node

class GameState:
	var alivePlayers: Array[Player]
	var upgradesOnTable: Array[Upgrade]

	func _init(_alivePlayers: Array, _upgradesOnTable: Array):
		alivePlayers = _alivePlayers
		upgradesOnTable = _upgradesOnTable
		
# TODO: make the Player class please and Upgrade too
var gameState: GameState = GameState.new([], [])
var players: Array[Player] = []
var currPlayerTurnIndex: int = 0 
var shotgunShells: Array[int] = []
var tableUpgrades: Array[Upgrades] = []
var roundIndex: int = 0;
var shotgunShellCount: int = 8; # some logic based on round index

# Game Logic functions
func initMatch() -> void:
	roundIndex = 0
	shotgunShellCount = 8;

func initRound() -> void:
	currPlayerTurnIndex = 1

func endTurn() -> void:
	currPlayerTurnIndex += 1

func checkWin() -> bool:
	return alivePlayers.size() == 1;


# Below are all functions that are player facing, call these when designing players for player devs
func getGameState() -> void:
	
func getAlivePlayers() -> Array[Player]:
	
func getAllPlayers() -> Array[Player]:
	

# TODO: make upgrade class please
func getUpgradesOnTheTable() -> Array[Upgrade]:
	

func shootPlayer(callerPlayerRef: Player, targetPlayerRef: Player) -> void:
	# logic for shooting
	endTurn()

func pickUpUpgrade(callerPlayerRef: Player, upgradeRef: Upgrade) -> void:
	

func useUpgrade(upgradeRef: Upgrade, callerPlayerRef: Player, targetPlayerRef: Player) -> void:
	

# Upgrade devs fill out the space below with your upgrade logics
